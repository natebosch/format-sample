import 'package:flutter/material.dart';
import 'package:seeds/design/app_theme.dart';
import 'package:seeds/domain-shared/ui_constants.dart';
import 'package:seeds/i18n/explore_screens/explore/explore.i18n.dart';

class ExploreLinkCard extends StatelessWidget {
  final String backgroundImage;
  final GestureTapCallback onTap;

  const ExploreLinkCard({
    Key? key,
    required this.backgroundImage,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultCardBorderRadius),
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Text(
              "Get Seeds".i18n,
              style: Theme.of(context).textTheme.buttonWhiteL,
            ),
          ),
        ),
      ),
    );
  }
}
