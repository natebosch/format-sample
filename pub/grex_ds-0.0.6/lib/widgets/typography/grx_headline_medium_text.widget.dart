import 'package:flutter/material.dart';

import '../../enums/grx_text_transform.enum.dart';
import '../../themes/colors/grx_colors.dart';
import '../../themes/typography/styles/grx_headline_medium_text.style.dart';
import 'grx_text.widget.dart';

/// A Design System's [Text] primarily used by medium titles
///
/// Sets [GrxHeadlineMediumTextStyle] as [style] default value.
class GrxHeadlineMediumText extends StatelessWidget {
  /// Creates a Design System's [Text].
  const GrxHeadlineMediumText(
    this.text, {
    super.key,
    this.textAlign,
    this.transform = GrxTextTransform.none,
    this.color = GrxColors.cff2e2e2e,
    this.decoration,
    this.overflow,
    this.isLoading = false,
  }) : textSpan = null;

  const GrxHeadlineMediumText.rich(
    this.textSpan, {
    super.key,
    this.textAlign,
    this.transform = GrxTextTransform.none,
    this.color = GrxColors.cff2e2e2e,
    this.decoration,
    this.overflow,
    this.isLoading = false,
  }) : text = null;

  final String? text;
  final InlineSpan? textSpan;
  final GrxTextTransform transform;
  final TextAlign? textAlign;
  final Color color;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final style = GrxHeadlineMediumTextStyle(
      color: color,
      decoration: decoration,
      overflow: overflow,
    );

    return textSpan != null
        ? GrxText.rich(
            textSpan,
            transform: transform,
            textAlign: textAlign,
            style: style,
            isLoading: isLoading,
          )
        : GrxText(
            text,
            transform: transform,
            textAlign: textAlign,
            style: style,
            isLoading: isLoading,
          );
  }
}
