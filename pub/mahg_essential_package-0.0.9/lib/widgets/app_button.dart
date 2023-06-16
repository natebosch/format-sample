part of mahg_essential_package;

class AppButton extends StatelessWidget {
  final String title;
  final double? radius;
  final void Function()? onPressed;
  final Color? buttonColor;
  final Color fontColor;
  final double horizontalPadding;
  final double verticalPadding;
  final double fontSize;
  final TextStyle? textStyle;
  const AppButton({
    required this.title,
    this.radius,
    required this.onPressed,
    this.buttonColor,
    this.textStyle,
    this.fontColor = Colors.white,
    this.horizontalPadding = 0,
    this.verticalPadding = 20,
    this.fontSize = 18,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding,
        ),
        backgroundColor: buttonColor ?? Colors.green,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 5),
        ),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: textStyle ??
              TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: fontColor,
              ),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
