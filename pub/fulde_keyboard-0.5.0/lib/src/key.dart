part of fulde_keyboard;

/// Virtual Keyboard key
class FuldeKeyboardKey {
  String? text;
  String? capsText;
  final FuldeKeyboardKeyType keyType;
  final FuldeKeyboardKeyAction? action;

  FuldeKeyboardKey({
    this.text,
    this.capsText,
    required this.keyType,
    this.action,
  }) {
    if (text == null && action != null) {
      text = action == FuldeKeyboardKeyAction.space
          ? ' '
          : (action == FuldeKeyboardKeyAction.enter ? '\n' : '');
    }
    if (capsText == null && action != null) {
      capsText = action == FuldeKeyboardKeyAction.space
          ? ' '
          : (action == FuldeKeyboardKeyAction.enter ? '\n' : '');
    }
  }
}
