import 'package:seeds/domain-shared/page_state.dart';
import 'package:seeds/domain-shared/result_to_state_mapper.dart';
import 'package:seeds/i18n/authentication/sign_up/sign_up.i18n.dart';
import 'package:seeds/screens/authentication/sign_up/viewmodels/bloc.dart';
import 'package:seeds/screens/authentication/sign_up/viewmodels/states/create_username_state.dart';

class CreateUsernameMapper extends StateMapper {
  SignupState mapValidateUsernameToState(
    SignupState currentState,
    String username,
    Result result,
  ) {
    final createUsernameCurrentState = currentState.createUsernameState;

    if (result.isError) {
      // Error means username is not taken and is available for the user to take it
      final newState = createUsernameCurrentState.copyWith(
        username: username,
        pageState: PageState.success,
      );

      return currentState.copyWith(createUsernameState: newState);
    }

    // We got a success response which means username is taken, so we should ask user to pick another username
    return currentState.copyWith(
      createUsernameState: CreateUsernameState.error(
        createUsernameCurrentState,
        'The username is already taken.'.i18n,
      ),
    );
  }

  SignupState mapGenerateUsernameToState(
    SignupState currentState,
    String fullname,
  ) {
    final generatedUsername = _generateUsername(fullname);

    final createUsernameCurrentState = currentState.createUsernameState;

    final newState = createUsernameCurrentState.copyWith(
      pageCommand: UsernameGenerated(),
      username: generatedUsername,
    );

    return currentState.copyWith(createUsernameState: newState);
  }

  String _generateUsername(String fullname) {
    String suggestedUsername =
        fullname.toLowerCase().trim().split('').map((character) {
          // ignore: unnecessary_raw_strings
          final legalChar =
              RegExp(r'[a-z]|1|2|3|4|5').allMatches(character).isNotEmpty;

          return legalChar ? character : '';
        }).join();

    suggestedUsername = suggestedUsername.padRight(12, '1');

    return suggestedUsername.substring(0, 12);
  }
}
