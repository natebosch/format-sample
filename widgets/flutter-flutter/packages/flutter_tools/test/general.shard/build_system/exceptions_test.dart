// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_tools/src/base/file_system.dart';
import 'package:flutter_tools/src/build_system/build_system.dart';
import 'package:flutter_tools/src/build_system/exceptions.dart';
import 'package:flutter_tools/src/globals.dart' as globals;

import '../../src/common.dart';

void main() {
  test('Exceptions', () {
    final MissingInputException missingInputException = MissingInputException(
      <File>[globals.fs.file('foo'), globals.fs.file('bar')],
      'example',
    );
    final CycleException cycleException = CycleException(<Target>{
      TestTarget()..name = 'foo',
      TestTarget()..name = 'bar',
    });
    final InvalidPatternException invalidPatternException =
        InvalidPatternException('ABC');
    final MissingOutputException missingOutputException =
        MissingOutputException(<File>[
      globals.fs.file('foo'),
      globals.fs.file('bar'),
    ], 'example');
    final MisplacedOutputException misplacedOutputException =
        MisplacedOutputException('foo', 'example');
    final MissingDefineException missingDefineException =
        MissingDefineException('foobar', 'example');

    expect(
      missingInputException.toString(),
      'foo, bar were declared as an inputs, '
      'but did not exist. Check the definition of target:example for errors',
    );
    expect(
      cycleException.toString(),
      'Dependency cycle detected in build: foo -> bar',
    );
    expect(
      invalidPatternException.toString(),
      'The pattern "ABC" is not valid',
    );
    expect(
      missingOutputException.toString(),
      'foo, bar were declared as outputs, but were not generated by the '
      'action. Check the definition of target:example for errors',
    );
    expect(
      misplacedOutputException.toString(),
      'Target example produced an output at foo which is outside of the '
      'current build or project directory',
    );
    expect(
      missingDefineException.toString(),
      'Target example required define foobar but it was not provided',
    );
  });
}

class TestTarget extends Target {
  @override
  Future<void> build(Environment environment) async {}

  @override
  List<Target> dependencies = <Target>[];

  @override
  List<Source> inputs = <Source>[];

  @override
  String name = 'test';

  @override
  List<Source> outputs = <Source>[];
}
