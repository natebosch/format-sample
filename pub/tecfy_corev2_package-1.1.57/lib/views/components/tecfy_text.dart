part of tecfy_corev2_client_package;

class TecfyText extends StatefulWidget {
  late String data;
  final InlineSpan? textSpan;

  /// If non-null, the style to use for this text.
  ///
  /// If the style's "inherit" property is true, the style will be merged with
  /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
  /// replace the closest enclosing [DefaultTextStyle].
  final TextStyle? style;

  /// {@macro flutter.painting.textPainter.strutStyle}
  final StrutStyle? strutStyle;

  /// How the text should be aligned horizontally.
  final TextAlign? textAlign;

  /// The directionality of the text.
  ///
  /// This decides how [textAlign] values like [TextAlign.start] and
  /// [TextAlign.end] are interpreted.
  ///
  /// This is also used to disambiguate how to render bidirectional text. For
  /// example, if the [data] is an English phrase followed by a Hebrew phrase,
  /// in a [TextDirection.ltr] context the English phrase will be on the left
  /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
  /// context, the English phrase will be on the right and the Hebrew phrase on
  /// its left.
  ///
  /// Defaults to the ambient [Directionality], if any.
  final TextDirection? textDirection;

  /// Used to select a font when the same Unicode character can
  /// be rendered differently, depending on the locale.
  ///
  /// It's rarely necessary to set this property. By default its value
  /// is inherited from the enclosing app with `Localizations.localeOf(context)`.
  ///
  /// See [RenderParagraph.locale] for more information.
  final Locale? locale;

  /// Whether the text should break at soft line breaks.
  ///
  /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
  final bool? softWrap;

  /// How visual overflow should be handled.
  ///
  /// If this is null [TextStyle.overflow] will be used, otherwise the value
  /// from the nearest [DefaultTextStyle] ancestor will be used.
  final TextOverflow? overflow;

  /// The number of font pixels for each logical pixel.
  ///
  /// For example, if the text scale factor is 1.5, text will be 50% larger than
  /// the specified font size.
  ///
  /// The value given to the constructor as textScaleFactor. If null, will
  /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
  /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
  final double? textScaleFactor;

  /// An optional maximum number of lines for the text to span, wrapping if necessary.
  /// If the text exceeds the given number of lines, it will be truncated according
  /// to [overflow].
  ///
  /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
  /// edge of the box.
  ///
  /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
  /// an explicit number for its [DefaultTextStyle.maxLines], then the
  /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
  /// widget directly to entirely override the [DefaultTextStyle].
  final int? maxLines;

  /// {@template flutter.widgets.Text.semanticsLabel}
  /// An alternative semantics label for this text.
  ///
  /// If present, the semantics of this widget will contain this value instead
  /// of the actual text. This will overwrite any of the semantics labels applied
  /// directly to the [TextSpan]s.
  ///
  /// This is useful for replacing abbreviations or shorthands with the full
  /// text value:
  ///
  /// ```dart
  /// Text(r'$$', semanticsLabel: 'Double dollars')
  /// ```
  /// {@endtemplate}
  final String? semanticsLabel;

  /// {@macro flutter.painting.textPainter.textWidthBasis}
  final TextWidthBasis? textWidthBasis;

  TecfyText(this.data,
      {Key? key,
      this.textSpan,
      this.style,
      this.strutStyle,
      this.textAlign,
      this.textDirection,
      this.locale,
      this.softWrap,
      this.overflow,
      this.textScaleFactor,
      this.maxLines,
      this.semanticsLabel,
      this.textWidthBasis})
      : super(key: key);

  @override
  State<TecfyText> createState() => _TecfyTextState();
}

class _TecfyTextState extends State<TecfyText> {
  late bool isDevelopmentMode;
  TextEditingController textController = TextEditingController();

  void initState() {
    isDevelopmentMode = ConfigService.getValueBool('DevelopmentMode');
    textController.text = AppLocale.translate(widget.data);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isDevelopmentMode) {
      return GestureDetector(
          onLongPress: () {
            print('isNew = ${widget.data == AppLocale.translate(widget.data)}');
            String? id;
            InitService.transList.forEach((element) {
              if (element['textValueTo'] == AppLocale.translate(widget.data)) {
                id = element['_id'];
              }
            });
            AppNavigator.showAppDialogEx(
                context,
                () => Scaffold(
                      backgroundColor: Colors.white,
                      body: Padding(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: textController,
                              decoration: InputDecoration(
                                labelText: 'الكلمة الحالية',
                              ),
                            ),
                          ],
                        ),
                      ),
                      bottomNavigationBar: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MaterialButton(
                                onPressed: () async {
                                  await EntityService.saveEntityEx(
                                    'CompanyTranslation',
                                    {
                                      'Language':
                                          '${LocalConfigService.languagePrefix}',
                                      'TextValueFrom': widget.data,
                                      'TextValueTo': textController.text,
                                      if (id != null) '_id': id,
                                    },
                                    context,
                                    widget.data ==
                                            AppLocale.translate(widget.data)
                                        ? true
                                        : false,
                                  ).then((value) {
                                    if (value.success) {
                                      setState(() {
                                        widget.data = textController.text;
                                        AppNavigator.pop(context);
                                      });
                                    }
                                    print(value.data);
                                  });
                                },
                                child: Text('Save'),
                                color: Colors.orange),
                            MaterialButton(
                                onPressed: () {
                                  AppNavigator.pop(context);
                                },
                                child: Text('Cancel'),
                                color: Colors.red),
                          ],
                        ),
                      ),
                    ),
                barrierDismissible: true,
                closeButton: true,
                title: 'تغير كلمة  ${widget.data} ',
                size: DialogBoxSizes.small);
          },
          child: Text(AppLocale.translate(widget.data)));
    } else {
      return Text(
        AppLocale.translate(widget.data),
        style: widget.style ?? TextStyle(),
      );
    }
  }
}
