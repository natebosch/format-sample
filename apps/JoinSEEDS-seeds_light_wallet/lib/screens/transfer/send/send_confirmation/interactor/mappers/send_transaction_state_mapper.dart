import 'package:seeds/blocs/rates/viewmodels/rates_bloc.dart';
import 'package:seeds/datasource/local/models/fiat_data_model.dart';
import 'package:seeds/datasource/local/models/token_data_model.dart';
import 'package:seeds/datasource/local/settings_storage.dart';
import 'package:seeds/datasource/remote/model/token_model.dart';
import 'package:seeds/domain-shared/page_state.dart';
import 'package:seeds/domain-shared/result_to_state_mapper.dart';
import 'package:seeds/screens/transfer/send/send_confirmation/interactor/viewmodels/send_confirmation_bloc.dart';
import 'package:seeds/screens/transfer/send/send_confirmation/interactor/viewmodels/send_confirmation_commands.dart';
import 'package:seeds/screens/transfer/send/send_confirmation/interactor/viewmodels/send_transaction_response.dart';
import 'package:seeds/utils/rate_states_extensions.dart';

class SendTransactionStateMapper extends StateMapper {
  SendConfirmationState mapResultToState(SendConfirmationState currentState, Result result, RatesState rateState) {
    if (result.isError) {
      return currentState.copyWith(pageState: PageState.failure, errorMessage: result.asError!.error.toString());
    } else {
      final resultResponse = result.asValue!.value as SendTransactionResponse;

      return currentState.copyWith(
        pageState: PageState.success,
        pageCommand: transactionResultPageCommand(resultResponse, rateState),
      );
    }
  }

  // TODO(n13): move this from here and put it in its own class - something to distinguish between
  // known and generic (unknown) types of transactions results. Now we have generic and transfer, could
  // add invite, guardians, etc - all transactions we know about.
  static TransactionPageCommand transactionResultPageCommand(
      SendTransactionResponse resultResponse, RatesState rateState) {
    if (resultResponse.isTransfer) {
      final transfer = resultResponse.transferTransactionModel!;

      FiatDataModel? fiatAmount;

      // transfer.symbol could be any token as - it could be an ESR request
      // try to get a fiat conversion rate here.
      final TokenModel? token = TokenModel.fromSymbolOrNull(transfer.symbol);
      if (token != null) {
        final TokenDataModel tokenAmount = TokenDataModel(transfer.doubleQuantity, token: token);
        fiatAmount = rateState.tokenToFiat(tokenAmount, settingsStorage.selectedFiatCurrency);
      }

      return ShowTransferSuccess(
        transactionModel: transfer,
        from: resultResponse.parseFromUser,
        to: resultResponse.parseToUser,
        fiatAmount: fiatAmount,
      );
    } else {
      return ShowTransactionSuccess(resultResponse.transactionModel);
    }
  }
}
