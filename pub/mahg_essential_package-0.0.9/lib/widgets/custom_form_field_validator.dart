part of mahg_essential_package;

class CustomFormFieldValidator extends StatefulWidget {
  final validationField;
  final String validationMessage;
  final Widget body;

  const CustomFormFieldValidator(
      {required this.validationField,
      required this.body,
      required this.validationMessage,
      Key? key})
      : super(key: key);

  @override
  State<CustomFormFieldValidator> createState() =>
      _CustomFormFieldValidatorState();
}

class _CustomFormFieldValidatorState extends State<CustomFormFieldValidator> {
  @override
  Widget build(BuildContext context) {
    return FormField<bool>(
      autovalidateMode: widget.validationField == null
          ? AutovalidateMode.disabled
          : AutovalidateMode.always,
      builder: (state) {
        return Column(
          children: <Widget>[
            widget.body,
            // validation Message Container
            state.errorText == null
                ? Container()
                : Container(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        state.errorText ?? '',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.error,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  )
          ],
        );
      },
      validator: (value) {
        var value = widget.validationField == null ? false : true;
        if (value) {
          return null;
        } else {
          return widget.validationMessage;
        }
      },
    );
  }
}
