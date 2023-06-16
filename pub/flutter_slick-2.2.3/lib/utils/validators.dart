// @dart = 2.17

import 'package:validators/validators.dart';

import 'format.dart';

abstract class FieldValidator<T> {
  String? call(T? value) {
    throw UnimplementedError();
  }
}

class LengthValidator<T> extends FieldValidator<T> {
  final int? min;
  final int? max;

  LengthValidator({
    this.min,
    this.max,
  });

  @override
  String? call(T? value) {
    var min = this.min;
    var max = this.max;
    if (value == null) return null;
    if (min != null && max != null) {
      if (value.toString().length < min || value.toString().length > max) {
        return 'Requires a value between $min and $max characters long';
      }
    } else if (min != null) {
      if (value.toString().length < min) {
        return 'Requires a value at least $min character(s) long';
      }
    } else if (max != null) {
      if (value.toString().length > max) {
        return 'Requires a value less than or equal to $max character(s) long';
      }
    }
    return null;
  }
}

class ListLengthValidator extends FieldValidator<List?> {
  final int? min;
  final int? max;

  ListLengthValidator({
    this.min,
    this.max,
  }) : assert(min != null);

  @override
  String? call(List? value) {
    var min = this.min;
    var max = this.max;
    if (value == null) return null;
    if (min != null && max != null) {
      if (value.length < min || value.length > max) {
        return 'Requires a number of items between $min and $max';
      }
    } else if (min != null) {
      if (value.length < min) {
        return 'Requires at least $min item(s)';
      }
    } else if (max != null) {
      if (value.length > max) {
        return 'Requires a number of items(s) less than or equal to $max';
      }
    }
    return null;
  }
}

class RequiredValidator<T> extends FieldValidator<T> {
  @override
  String? call(T? value) {
    if (value is String && value.isEmpty) {
      return 'Requires a value';
    }
    if (value == null) {
      return 'Requires a value';
    } else {
      return null;
    }
  }
}

class EmailFieldValidator extends FieldValidator<String> {
  @override
  String? call(String? value) {
    if (value is String && !isEmail(value.toString())) {
      return 'Requires a valid email';
    } else {
      return null;
    }
  }
}

class CombinedFieldValidator<T> extends FieldValidator<T> {
  final List<FieldValidator<T>> validators;

  CombinedFieldValidator(this.validators);

  @override
  String? call(T? value) {
    for (FieldValidator validator in validators) {
      var result = validator(value);
      if (result != null) return result;
    }
    return null;
  }
}

class DependentValidator<T> extends FieldValidator<T> {
  final FieldValidator<T> Function() build;

  DependentValidator(this.build);

  @override
  String? call(T? value) {
    return build()(value);
  }
}

class RangeValidator extends FieldValidator<double> {
  final double? min;
  final double? max;

  RangeValidator({
    this.min,
    this.max,
  });

  @override
  String? call(double? value) {
    if (value == null) return null;
    if (min != null && value < min!) return 'Should be higher than $min';
    if (max != null && value > max!) return 'Should be lower than $max';
    return null;
  }
}

class DateRangeValidator extends FieldValidator<DateTime> {
  final DateTime? min;
  final DateTime? max;

  DateRangeValidator({
    this.min,
    this.max,
  });

  @override
  String? call(DateTime? value) {
    if (value == null) return null;
    if (min != null && value.isAfter(min!)) {
      return 'Should be after ${formatDate(min)}';
    }
    if (max != null && value.isBefore(max!)) {
      return 'Should be before ${formatDate(max)}';
    }
    return null;
  }
}

class FieldMatchValidator<T> extends FieldValidator<T> {
  final String fieldName;
  final T Function() getFieldValue;

  FieldMatchValidator(
    this.fieldName,
    this.getFieldValue,
  );

  @override
  String? call(T? value) {
    var fieldvalue = getFieldValue();
    if (value is T && value == fieldvalue) {
      return null;
    } else {
      return "Value should match '$fieldName'.";
    }
  }
}
