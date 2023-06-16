import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import 'date.dart';

/// Currency formatter for USD.
NumberFormat usdWithSignFormat({int decimalDigits = 2}) {
  return NumberFormat.currency(name: '\$', decimalDigits: decimalDigits);
}

String formate_amount(double? a) {
  return NumberFormat.currency(decimalDigits: 2, name: '\$').format(a);
}

/// Percent formatter with two decimal points.
NumberFormat percentFormat(BuildContext context, {int decimalDigits = 2}) {
  return NumberFormat.decimalPercentPattern(decimalDigits: decimalDigits);
}

String formateDollar(double m, {bool addSign = true}) {
  String mStr = m.toStringAsFixed(2);
  String rs = mStr.substring(mStr.length - 3);
  mStr = mStr.substring(0, mStr.length - 3);
  while (mStr.length > 3) {
    rs = "," + mStr.substring(mStr.length - 3) + rs;
    mStr = mStr.substring(0, mStr.length - 3);
  }
  rs = addSign ? ("\$ " + mStr + rs) : (mStr + rs);
  return rs;
}

String? formateDollarStr(String m, {bool addSign = true}) {
  if (m.startsWith("\$")) m = m.substring(1);
  m = m.replaceAll(",", "");
  final s = double.tryParse(m);
  if (s == null) return null;
  return formateDollar(s, addSign: addSign);
}

//only allow decimal input, e.g. "12", "12.3". not allowed: ".12", "3.1.1"
class amountFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String text = oldValue.text;
    int offset = oldValue.selection.end;
    if (newValue.text.isEmpty || Decimal.tryParse(newValue.text) != null) {
      text = newValue.text;
      offset = newValue.selection.end;
    }
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: offset),
    );
  }
}

class numberFmt implements TextInputFormatter {
  final bool frac;
  numberFmt({this.frac = false});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) return newValue;
    if (frac) {
      return newValue.text.toUsd() != null ? newValue : oldValue;
    } else {
      return int.tryParse(newValue.text) != null ? newValue : oldValue;
    }
  }
}

class ssnFormatter extends TextInputFormatter {
  int maxLength = 9;
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String v = newValue.text;
    String vo = oldValue.text;
    bool isAdding = v.length > vo.length;
    int s = newValue.selection.end;

    v = v.replaceAll(RegExp('-'), '');

    if (v.length > maxLength) {
      v = v.substring(0, maxLength);
      s = 11;
    }

    if (v.length >= 7) {
      if (v.length == 7 && isAdding) s++;
      v = v.substring(0, 3) + '-' + v.substring(3);
      v = v.substring(0, 7) + '-' + v.substring(7);
    } else if (v.length >= 4) {
      if (v.length == 4 && isAdding) s++;
      v = v.substring(0, 3) + '-' + v.substring(3);
    }

    return newValue.copyWith(
      text: v,
      selection: TextSelection.collapsed(offset: s),
    );
  }
}

class dollarFmt implements TextInputFormatter {
  dollarFmt();

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    ///if choose all and delete all text
    if (newValue.text.isEmpty) return newValue.copyWith(text: "0.00");

    final n = formateDollarStr(newValue.text, addSign: false);
    late TextEditingValue r;

    ///if new text is illegal
    if (n == null) {
      if (newValue.text.contains("..")) {
        final ns = newValue.selection;
        return oldValue.copyWith(
          selection: ns
            ..copyWith(
              baseOffset: ns.baseOffset + 1,
              extentOffset: ns.extentOffset + 1,
            ),
        );
      }
      return oldValue;
    } else {
      ///if delete, or .
      if (newValue.text.length + 1 == oldValue.text.length &&
          newValue.text.replaceAll(",", "").replaceAll(".", "") ==
              oldValue.text.replaceAll(",", "").replaceAll(".", "")) {
        for (int i = 0; i < oldValue.text.length; i++) {
          if (oldValue.text[i] != newValue.text[i]) {
            if (oldValue.text[i] == "." || oldValue.text[i] == ",") {
              String newx = oldValue.text.replaceRange(i - 1, i, "");
              if (newx.startsWith(".")) newx = "0" + newx;
              r = newValue.copyWith(
                text: formateDollarStr(newx, addSign: false),
              );
            } else
              r = newValue.copyWith(text: n);
            break;
          }
        }
      }
      // final n1=countComma(newValue.text);
      else
        r = newValue.copyWith(text: n);
    }
    final poffset = newValue.text.lastIndexOf(".");
    int boffset = newValue.text.length - newValue.selection.baseOffset;
    int eoffset = newValue.text.length - newValue.selection.extentOffset;
    if (poffset != -1) {
      final rpoffset = newValue.text.length - 1 - poffset;
      if (boffset <= rpoffset) boffset += 2 - rpoffset;
      if (eoffset <= rpoffset) eoffset += 2 - rpoffset;
    } else if (oldValue.text.contains(".")) {
      boffset++;
      eoffset++;
    } else {
      boffset += 3;
      eoffset += 3;
    }
    return r.copyWith(
      selection: newValue.selection.copyWith(
        baseOffset: r.text.length - max(boffset, 0),
        extentOffset: r.text.length - max(eoffset, 0),
      ),
    );
  }
}

extension usd on String {
  double? toUsd() {
    return double.tryParse(replaceAll(",", ""));
  }
}
