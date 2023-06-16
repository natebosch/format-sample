part of tecfy_corev2_client_package;

class AppIconButton extends StatefulWidget {
  final Widget icon;
  final String? tooltip;
  final Future Function()? onPressed;
  const AppIconButton(
      {Key? key, required this.icon, required this.onPressed, this.tooltip})
      : super(key: key);

  @override
  _AppIconButtonState createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isLoading ? CircularProgressIndicator() : widget.icon,
      onPressed: () async {
        if (_isLoading || widget.onPressed == null) return;
        setState(() => _isLoading = true);
        await widget.onPressed!();
        setState(() => _isLoading = false);
      },
      tooltip: widget.tooltip,
    );
  }
}
