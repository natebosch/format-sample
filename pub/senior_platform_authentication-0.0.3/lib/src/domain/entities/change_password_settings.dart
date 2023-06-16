import 'package:equatable/equatable.dart';

class ChangePasswordSettings extends Equatable {
  final bool allowed;
  final String? url;
  final String? customRecaptchaSiteKey;

  const ChangePasswordSettings({
    required this.allowed,
    this.url,
    this.customRecaptchaSiteKey,
  });

  ChangePasswordSettings copyWith({
    bool? allowed,
    String? url,
    String? customRecaptchaSiteKey,
  }) {
    return ChangePasswordSettings(
      allowed: allowed ?? this.allowed,
      url: url ?? this.url,
      customRecaptchaSiteKey:
          customRecaptchaSiteKey ?? this.customRecaptchaSiteKey,
    );
  }

  @override
  List<Object?> get props => [
        allowed,
        url,
        customRecaptchaSiteKey,
      ];
}
