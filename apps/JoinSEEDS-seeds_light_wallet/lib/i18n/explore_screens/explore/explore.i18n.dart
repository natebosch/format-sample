import 'package:i18n_extension/i18n_extension.dart';

extension Localization on String {
  static final _t = Translations.byLocale('en_us') +
      {
        'es_es': {
          'Explore': 'Explorar',
          'Invite a Friend': 'Invita un amigo',
          'Plant Seeds': 'Plantar Seeds',
          'Vote': 'Votar',
          'Uh oh! Something went wrong...': '¡UH oh! Algo salió mal...',
          'Get Seeds': "Conseguir Seeds",
        },
        'pt_br': {
          'Explore': 'Explorar',
          'Invite a Friend': 'Convide um amigo',
          'Plant Seeds': 'Plantar Seeds',
          'Vote': 'Votar',
          'Uh oh! Something went wrong...': 'Ops! Algo deu errado...',
          'Get Seeds': "Obter Seeds",
        }
      };

  String get i18n => localize(this, _t);

  String fill(List<Object> params) => localizeFill(this, params);
}
