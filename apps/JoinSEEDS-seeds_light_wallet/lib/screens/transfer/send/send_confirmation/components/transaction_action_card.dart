import 'package:flutter/material.dart';
import 'package:seeds/constants/app_colors.dart';
import 'package:seeds/datasource/local/models/eos_action.dart';
import 'package:seeds/design/app_theme.dart';
import 'package:seeds/utils/cap_utils.dart';

class TransactionActionCard extends StatelessWidget {
  final EOSAction action;

  const TransactionActionCard(this.action, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grey1),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(action.actionName.inCaps, style: Theme.of(context).textTheme.headline7),
                  Text(action.accountName, style: Theme.of(context).textTheme.subtitle2),
                ],
              ),
              const Divider(color: AppColors.grey1),
              Column(
                children: [
                  for (final i in action.data.entries)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(i.key.inCaps, style: Theme.of(context).textTheme.subtitle2OpacityEmphasis),
                          const SizedBox(width: 4),
                          Flexible(child: Text('${i.value}', style: Theme.of(context).textTheme.subtitle2)),
                        ],
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
