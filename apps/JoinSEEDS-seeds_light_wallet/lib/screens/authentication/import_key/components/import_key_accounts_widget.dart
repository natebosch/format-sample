import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seeds/blocs/authentication/viewmodels/authentication_bloc.dart';
import 'package:seeds/components/full_page_loading_indicator.dart';
import 'package:seeds/components/profile_avatar.dart';
import 'package:seeds/constants/app_colors.dart';
import 'package:seeds/datasource/remote/model/profile_model.dart';
import 'package:seeds/design/app_theme.dart';
import 'package:seeds/domain-shared/page_state.dart';
import 'package:seeds/domain-shared/ui_constants.dart';
import 'package:seeds/screens/authentication/import_key/interactor/viewmodels/import_key_bloc.dart';

class ImportKeyAccountsWidget extends StatelessWidget {
  const ImportKeyAccountsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImportKeyBloc, ImportKeyState>(
      listenWhen: (_, current) => current.accountSelected != null,
      listener: (context, state) {
        BlocProvider.of<AuthenticationBloc>(context).add(OnImportAccount(
          account: state.accountSelected!,
          authData: state.authData!,
        ));
      },
      builder: (context, state) {
        switch (state.pageState) {
          case PageState.loading:
            return const FullPageLoadingIndicator();
          case PageState.failure:
            return Center(
              child: Text(
                state.errorMessage ?? "Oops, Something went wrong",
                style: Theme.of(context).textTheme.subtitle1Red2,
              ),
            );
          case PageState.success:
            return ListView(
              shrinkWrap: true,
              children: state.accounts.map(
                (ProfileModel? profile) => InkWell(
                  borderRadius: BorderRadius.circular(defaultCardBorderRadius),
                  onTap: () {
                    context.read<ImportKeyBloc>().add(
                      AccountSelected(account: profile!.account),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: Ink(
                      decoration: BoxDecoration(
                        color: AppColors.lightGreen2,
                        borderRadius:
                            BorderRadius.circular(defaultCardBorderRadius),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: ListTile(
                          leading: ProfileAvatar(
                            size: 60,
                            image: profile!.image,
                            account: profile.account,
                            nickname: profile.nickname,
                          ),
                          title: Text(
                            profile.nickname ?? '',
                            style: Theme.of(context).textTheme.button,
                          ),
                          subtitle: Text(
                            profile.account,
                            style: Theme.of(context)
                                .textTheme
                                .subtitle3OpacityEmphasis,
                          ),
                          trailing: const Icon(Icons.navigate_next),
                        ),
                      ),
                    ),
                  ),
                ),
              ).toList(),
            );
          default:
            return const SizedBox.shrink();
        }
      },
    );
  }
}
