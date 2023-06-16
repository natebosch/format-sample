import 'package:equatable/equatable.dart';

class LoginMFA extends Equatable {
  final String temporaryToken;
  final String validationCode;
  final String tenant;

  const LoginMFA({
    required this.temporaryToken,
    required this.validationCode,
    required this.tenant,
  });

  LoginMFA copyWith({
    String? temporaryToken,
    String? validationCode,
    String? tenant,
  }) {
    return LoginMFA(
      temporaryToken: temporaryToken ?? this.temporaryToken,
      validationCode: validationCode ?? this.validationCode,
      tenant: tenant ?? this.tenant,
    );
  }

  @override
  List<Object?> get props => [
        temporaryToken,
        validationCode,
        tenant,
      ];
}
