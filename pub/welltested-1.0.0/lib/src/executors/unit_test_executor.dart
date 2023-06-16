/*
 * Created on Tue Mar 07 2023
 *
 * Copyright (C) 2023 PixelApps - All Rights Reserved
 * The code in this file is Intellectutal Property of PixelApps
 * and can't be edited, redistributed or used without a valid license of it's product (Welltested)[https://welltested.ai]
 */
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:build/build.dart';
import 'package:welltested/src/executors/models_executor.dart';
import 'package:welltested/src/models/test_request_data.dart';
import 'package:welltested/src/repositories/generations_repository.dart';
import 'package:welltested/src/repositories/path_repository.dart';
import 'package:welltested/src/visitors/function_body_visitor.dart';

class UnitTestExecutor {
  final GenerationRepository _generationRepository;
  final PathRepository _pathRepository;
  final ModelsExecutor _modelsExecutor;
  UnitTestExecutor(
    this._generationRepository,
    this._pathRepository,
    this._modelsExecutor,
  );
  Future<TestRequestData> prepareRequest({
    required MapEntry<String, MethodDeclaration> method,
    required AstNode fileAstNode,
    required Uri fileImport,
    required DartType className,
    required Map<String, MethodDeclaration> methodAstNodes,
    required BuildStep buildStep,
  }) async {
    final ast_method = method.value;
    final FunctionBodyVisitor functionBodyVisitor = FunctionBodyVisitor(
      pathExecutor: _pathRepository,
    );
    ast_method.visitChildren(functionBodyVisitor);
    final processedModels = await _modelsExecutor.processModels(
      functionBodyVisitor.classElements,
      buildStep,
    );

    final TestRequestData testRequestData = TestRequestData(
      fileNode: fileAstNode,
      functionName: method.key,
      methodAstNodes: methodAstNodes,
      classType: className,
      fileImportPath: fileImport,
      nestedMethods: functionBodyVisitor.nestedMethods,
      simpleModels: processedModels[0],
      complexModels: processedModels[1],
      callFlows: functionBodyVisitor.callFlows,
      variableDeclarations: functionBodyVisitor.updateVariableNameNType,
    );
    return testRequestData;
  }
}
