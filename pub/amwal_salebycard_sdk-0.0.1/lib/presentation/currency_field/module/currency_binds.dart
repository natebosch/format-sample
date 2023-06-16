import 'package:amwal_salebycard_sdk/core/networking/network_service.dart';
import 'package:amwal_salebycard_sdk/core/usecase/i_use_case.dart';
import 'package:amwal_salebycard_sdk/dependency/injector.dart';
import 'package:amwal_salebycard_sdk/presentation/currency_field/cubit/currency_cubit.dart';
import 'package:amwal_salebycard_sdk/presentation/currency_field/data/models/request/currency_request.dart';
import 'package:amwal_salebycard_sdk/presentation/currency_field/data/models/response/currency_response.dart';
import 'package:amwal_salebycard_sdk/presentation/currency_field/data/repository/currency_repository.dart';
import 'package:amwal_salebycard_sdk/presentation/currency_field/domain/repository/currency_repository.dart';
import 'package:amwal_salebycard_sdk/presentation/currency_field/domain/use_case/currency_use_case.dart';

class CurrencyBinds {
  final NetworkService _networkService;
  const CurrencyBinds(this._networkService);

  void setup() {
    final getIt = CardInjector.instance.getIt;
    CardInjector.instance.registerLazySingleton<ICurrencyRepository>(
      () => CurrencyRepositoryImpl(_networkService),
    );
    CardInjector.instance
        .registerLazySingleton<IUseCase<CurrenciesResponse, CurrencyRequest>>(
      () => GetCurrenciesUseCase(
        getIt<ICurrencyRepository>(),
      ),
    );
    CardInjector.instance.registerLazySingleton<CurrencyCubit>(
      () => CurrencyCubit(
        getIt<IUseCase<CurrenciesResponse, CurrencyRequest>>(),
      ),
    );
  }
}
