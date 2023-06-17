import 'package:android_path_provider/android_path_provider.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fpdart/fpdart.dart';
import 'package:gosemolis_utility/core/core.dart';
import 'package:gosemolis_utility/core/helper/permission_helper.dart';
import 'package:path_provider/path_provider.dart' as pp;
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pdf_compressor/pdf_compressor.dart';

class DynamicPicker {
  static var imageExts = ['jpg', 'jpeg', 'png', 'gif'];
  static var allowedExtensions = [
    ...imageExts,
    'bmp',
    'pdf',
    'doc',
    'docx',
    'csv',
    'xls',
    'xlsx',
    'ppt',
  ];

  static Future<File?> compressImageAndGetFile(File file) async {
    try {
      var targetPath = await setFilePath(file.absolute.path, compressed: true);
      var result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path,
        targetPath!,
        quality: 50,
        format: CompressFormat.values.firstWhere((element) {
          var ext = file.path.split(".").last;
          if (ext.endsWith("jpg")) {
            ext = "jpeg";
          }
          return element.name == ext;
        }),
      );
      return result;
    } catch (e) {
      debugPrint('Error when compressing image ${e.toString()}');
      throw ErrorCompress("Error when compressing image ${e.toString()}");
    }
  }

  static Future<File?> compressPDFAndGetFile(File file) async {
    if (Platform.isIOS) {
      return file;
    }
    var targetPath = await setFilePath(file.absolute.path, compressed: true);
    if (targetPath == null) return null;
    try {
      await PdfCompressor.compressPdfFile(
        file.path,
        targetPath,
        CompressQuality.MEDIUM,
      );
      var finalResult = File(targetPath);
      return finalResult;
    } catch (e) {
      debugPrint('ErrorCompress PDF ${e.toString()}');
      throw ErrorCompress(e);
    }
  }

  static Future<void> showDynamicFilePicker(
    BuildContext context, {
    bool multiple = false,
    bool onlyMediaType = false,
    bool onlyFromCamera = false,
    bool usingAllowedExts = true,
    required ValueChanged<Either<Exception, List<File>>>? onPickedFile,
  }) async {
    if (onlyFromCamera) {
      return await PermissionHelper.requestPermissionCamera(
        onGranted: () => _pickImage(onPickedFile, preferFrontCamera: true),
        onDenied: () {
          CustomFlushbar(
            context,
            message: "Camera permission isn't allowed",
            flushbarType: FlushbarType.error,
          ).show();
        },
      );
    }
    return await showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadiusValue),
      ),
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: SizedBox(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.attachment_outlined),
                  title: const Text("File"),
                  onTap: () async {
                    await PermissionHelper.requestPermissionStorage(
                      onGranted: () async {
                        Navigator.of(context).pop();
                        return await _pickFiles(
                          onPickedFile,
                          FileType.custom,
                          multiple: multiple,
                          usingAllowedExts: usingAllowedExts,
                        );
                      },
                      onDenied: () {
                        Navigator.of(context).pop();
                        CustomFlushbar(
                          context,
                          message: "Storage permission isn't allowed",
                          flushbarType: FlushbarType.error,
                        ).show();
                      },
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: Text("Gallery"),
                  onTap: () async {
                    await PermissionHelper.requestPermissionStorage(
                      onGranted: () async {
                        Navigator.of(context).pop();
                        return await _pickFiles(
                          onPickedFile,
                          FileType.image,
                          multiple: multiple,
                        );
                      },
                      onDenied: () {
                        Navigator.of(context).pop();
                        CustomFlushbar(
                          context,
                          message: "Storage permission isn't allowed",
                          flushbarType: FlushbarType.error,
                        ).show();
                      },
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: Text("Camera"),
                  onTap: () async {
                    await PermissionHelper.requestPermissionCamera(
                      onGranted: () async => await _pickImage(onPickedFile),
                      onDenied: () {
                        CustomFlushbar(
                          context,
                          message: "Camera permission isn't allowed",
                          flushbarType: FlushbarType.error,
                        ).show();
                      },
                    ).then((value) => Navigator.of(context).pop());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<List<File>?> showDynamicFilePicker2(
    BuildContext context, {
    bool multiple = false,
    bool onlyMediaType = false,
    bool showCamera = true,
  }) async {
    return await showModalBottomSheet<List<File>?>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: SizedBox(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.attachment_outlined),
                  title: const Text("File"),
                  onTap: () async {
                    await PermissionHelper.requestPermissionStorage(
                      onGranted: () async {
                        var files = await _pickFiles(
                          (v) {},
                          FileType.custom,
                          multiple: multiple,
                          usingAllowedExts: true,
                        );
                        Navigator.pop(context, files);
                      },
                      onDenied: () {
                        CustomFlushbar(
                          context,
                          message: "Storage permission isn't allowed",
                          flushbarType: FlushbarType.error,
                        ).show();
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: Text("Gallery"),
                  onTap: () async {
                    await PermissionHelper.requestPermissionStorage(
                      onGranted: () async {
                        var files = await _pickFiles(
                          (v) {},
                          FileType.media,
                          multiple: multiple,
                        );
                        Navigator.pop(context, files);
                      },
                      onDenied: () {
                        CustomFlushbar(
                          context,
                          message: "Storage permission isn't allowed",
                          flushbarType: FlushbarType.error,
                        ).show();
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
                Visibility(
                  visible: showCamera,
                  child: ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: Text("Camera"),
                    onTap: () async {
                      await PermissionHelper.requestPermissionCamera(
                        onGranted: () async {
                          var files = await _pickImage((v) {});
                          Navigator.pop(context, files);
                        },
                        onDenied: () {
                          CustomFlushbar(
                            context,
                            message: "Camera permission isn't allowed",
                            flushbarType: FlushbarType.error,
                          ).show();
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<List<File>?> _pickImage(
    ValueChanged<Either<Exception, List<File>>>? onPickedFile, {
    bool preferFrontCamera = false,
  }) async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.camera,
        imageQuality: 50,
        preferredCameraDevice:
            preferFrontCamera ? CameraDevice.front : CameraDevice.rear,
      );
      if (image == null) {
        return null;
      }
      if (onPickedFile == null) {
        return null;
      }
      var compressedFile = await compressImageAndGetFile(File(image.path));
      if (compressedFile == null) {
        return [];
      }
      var result = [compressedFile];
      onPickedFile.call(right([compressedFile]));
      return result;
    } on Exception catch (e) {
      debugPrint("failed to pick ${e.toString()}");
      onPickedFile?.call(left(e));
      return null;
    }
  }

  static Future<String?> setFilePath(
    String url, {
    bool compressed = false,
  }) async {
    String? path = await findLocalPath();
    if (path == null) return null;
    if (compressed) {
      return "$path/compressed_${url.split("/").last.split(
            ".",
          ).first}.${url.split(".").last}";
    } else {
      return "$path/${url.split("/").last.split(".").first}.${url.split(
            ".",
          ).last}";
    }
  }

  static Directory findRoot(FileSystemEntity entity) {
    final Directory parent = entity.parent;
    if (parent.path == entity.path) return parent;
    return findRoot(parent);
  }

  static bool fileExists(String filePath) => File(filePath).existsSync();

  static Future<List<File>?> _pickFiles(
    ValueChanged<Either<Exception, List<File>>>? onPickedFile,
    FileType filetype, {
    bool multiple = false,
    bool usingAllowedExts = false,
  }) async {
    List<File> result = [];
    var rawResult = await FilePicker.platform.pickFiles(
      type: filetype,
      allowMultiple: multiple,
      allowedExtensions: _getAllowedExtensions(filetype, usingAllowedExts),
    );
    if (rawResult == null) {
      return null;
    }
    try {
      await Future.wait(rawResult.files.map((e) async {
        if (isTypeFileIsImage(e.path!)) {
          var file = await compressImageAndGetFile(File(e.path!));
          if (file != null) result.add(file);
        } else if (isTypeFileIsPDF(e.path!)) {
          var file = await compressPDFAndGetFile(File(e.path!));
          if (file != null) result.add(file);
        } else {
          result.add(File(e.path!));
        }
      }));
    } on Exception catch (e) {
      onPickedFile?.call(left(e));
    }
    onPickedFile?.call(right(result));
    return result;
  }

  static List<String>? _getAllowedExtensions(
    FileType filetype,
    bool usingAllowedExts,
  ) {
    switch (filetype) {
      case FileType.media:
        return null;
      case FileType.custom:
        if (!usingAllowedExts) {
          return imageExts;
        }
        return allowedExtensions;
      default:
    }
    return null;
  }

  static bool isTypeFileIsImage(String path) {
    return imageExts
        .singleWhere(
          (element) => element == path.split(".").last,
          orElse: () => "",
        )
        .isNotEmpty;
  }

  static bool isTypeFileIsPDF(String path) {
    return ["pdf"]
        .singleWhere(
          (element) => element == path.split(".").last,
          orElse: () => "",
        )
        .isNotEmpty;
  }

  static Future<bool> isFileExists(String url) async {
    var path = await setFilePath(url);
    if (path == null) return false;
    return fileExists(path);
  }

  static Future<String?> findLocalPath({BuildContext? context}) async {
    String? externalStorageDirPath;
    if (Platform.isAndroid) {
      try {
        externalStorageDirPath = await AndroidPathProvider.downloadsPath;
      } catch (e) {
        final directory = await pp.getExternalStorageDirectory();
        externalStorageDirPath = directory?.path;
      }
    } else if (Platform.isIOS) {
      externalStorageDirPath =
          (await pp.getApplicationDocumentsDirectory()).absolute.path;
    }
    return externalStorageDirPath;
  }
}

class ErrorCompress implements Exception {
  final Object e;
  const ErrorCompress(this.e) : super();
}
