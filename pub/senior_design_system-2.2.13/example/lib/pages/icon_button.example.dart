import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:senior_design_tokens/senior_design_tokens.dart';
import 'package:senior_design_system/senior_design_system.dart';

import '../widgets/panel.dart';
import '../widgets/page_wrapper.dart';

class IconButtonExample extends StatelessWidget {
  const IconButtonExample({Key? key}) : super(key: key);

  void _showMessage(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SeniorSnackBar.success(message: 'You just tap the icon button'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      title: 'Icon Button Example',
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(SeniorSpacing.big),
          child: Panel(
            title: 'Default - disabled - outlined',
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: types.map(
                (type) => Padding(
                  padding: const EdgeInsets.all(SeniorSpacing.medium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(SeniorSpacing.small),
                        child: Column(
                          children: sizes.map(
                            (size) => Padding(
                              padding: const EdgeInsets.only(
                                bottom: SeniorSpacing.xsmall,
                              ),
                              child: SeniorIconButton(
                                icon: FontAwesomeIcons.rocket,
                                onTap: () => _showMessage(context),
                                size: size,
                                type: type,
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(SeniorSpacing.small),
                        child: Column(
                          children: sizes.map(
                            (size) => Padding(
                              padding: const EdgeInsets.only(
                                bottom: SeniorSpacing.xsmall,
                              ),
                              child: SeniorIconButton(
                                disabled: true,
                                icon: FontAwesomeIcons.rocket,
                                onTap: () => _showMessage(context),
                                size: size,
                                type: type,
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(SeniorSpacing.small),
                        child: Column(
                          children: sizes.map(
                            (size) => Padding(
                              padding: const EdgeInsets.only(
                                bottom: SeniorSpacing.xsmall,
                              ),
                              child: SeniorIconButton(
                                icon: FontAwesomeIcons.rocket,
                                onTap: () => _showMessage(context),
                                outlined: true,
                                size: size,
                                type: type,
                              ),
                            ),
                          ).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

final types = [
  SeniorIconButtonType.primary,
  SeniorIconButtonType.secondary,
  SeniorIconButtonType.ghost,
  SeniorIconButtonType.danger,
];

final sizes = [
  SeniorIconButtonSize.small,
  SeniorIconButtonSize.medium,
  SeniorIconButtonSize.big,
];
