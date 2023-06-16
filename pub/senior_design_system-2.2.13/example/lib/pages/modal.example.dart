import 'package:flutter/material.dart';

import 'package:senior_design_system/senior_design_system.dart';

import '../widgets/page_wrapper.dart';
import '../widgets/panel.dart';

class ModalExample extends StatefulWidget {
  const ModalExample({Key? key}) : super(key: key);

  @override
  _ModalExampleState createState() => _ModalExampleState();
}

class _ModalExampleState extends State<ModalExample> {
  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      title: 'Modal',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Panel(
            title: 'Modal com ghost button',
            child: Center(
              child: SeniorButton(
                label: 'Mostrar a modal',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SeniorModal(
                        title: 'Título da Modal',
                        content:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl.',
                        ghostButton: SeniorButton(
                          label: 'Ghost Button',
                          fullLength: true,
                          onPressed: () {},
                          type: SeniorButtonType.ghost,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Panel(
            title: 'Modal com ghost e primary button',
            child: Center(
              child: SeniorButton(
                label: 'Mostrar a modal',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SeniorModal(
                        title: 'Título da Modal',
                        content:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl.',
                        ghostButton: SeniorButton(
                          label: 'Ghost Button',
                          fullLength: true,
                          onPressed: () {},
                          type: SeniorButtonType.ghost,
                        ),
                        actionButton: SeniorButton(
                          label: 'Primary Button',
                          fullLength: true,
                          onPressed: () {},
                          type: SeniorButtonType.primary,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
          Panel(
            title: 'Modal com danger e ghost button',
            child: Center(
              child: SeniorButton(
                label: 'Mostrar a modal',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SeniorModal(
                        title: 'Título da Modal',
                        content:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum urna lorem, dapibus non mi vitae, ornare finibus nisl.',
                        ghostButton: SeniorButton(
                          label: 'Ghost Button',
                          fullLength: true,
                          onPressed: () {},
                          type: SeniorButtonType.ghost,
                        ),
                        actionButton: SeniorButton(
                          label: 'Danger',
                          fullLength: true,
                          onPressed: () {},
                          type: SeniorButtonType.danger,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
