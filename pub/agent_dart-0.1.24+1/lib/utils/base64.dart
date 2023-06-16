import 'dart:typed_data';

import 'u8a.dart';
import 'dart:convert' as convert;

bool base64Validate(String? value) {
  assert(value != null, 'Expected non-null, non-empty base64 input');

  return RegExp(
          r'^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=|[A-Za-z0-9+\/]{4})$')
      .hasMatch(value!);
}

String base64Trim(String value) {
  while (value.isNotEmpty && value[value.length - 1] == '=') {
    final len = value.length;
    value = value.substring(0, len - 1);
  }
  return value;
}

String base64Pad(String value) {
  return value.padRight(value.length + (value.length % 4), '=');
}

bool isBase64(String value) {
  try {
    return base64Validate(value);
  } catch (error) {
    return false;
  }
}

String base64Encode(dynamic value) {
  return convert.base64Encode(u8aToU8a(value, useDartEncode: true).toList());
}

Uint8List base64Decode(String value) {
  assert(base64Validate(value), 'invalid base64 string');
  return convert.base64Decode(value);
}
