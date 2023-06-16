import 'package:flutter/cupertino.dart';

@protected
enum PMEEnvironment { localhostPME, developPME, stagingPME, productionPME }

@protected
extension PMEEnvironmentExtension on PMEEnvironment {
  String get apiDomain {
    switch (this) {
      case PMEEnvironment.localhostPME:
        return '"http://localhost:12345';
      case PMEEnvironment.developPME:
        return 'https://ads.dev.admaptech.info';
      case PMEEnvironment.stagingPME:
        return 'https://mbp.admaptech.info';
      case PMEEnvironment.productionPME:
        return 'https://mbp.mapbox-lab.com';
    }
  }
}
