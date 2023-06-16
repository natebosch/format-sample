// ignore_for_file: file_names, must_be_immutable, constant_identifier_names, slash_for_doc_comments, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_cast, sized_box_for_whitespace, prefer_function_declarations_over_variables, overridden_fields, annotate_overrides, prefer_const_literals_to_create_immutables, unnecessary_null_comparison, deprecated_member_use

import 'package:flutter/material.dart';

class AnimatedSkeleton extends StatelessWidget {
  final bool isLoading;
  final Widget skeletonWidget;
  final Widget body;
  final Duration duration;

  const AnimatedSkeleton({
    Key? key,
    required this.isLoading,
    required this.skeletonWidget,
    required this.body,
    this.duration = const Duration(milliseconds: 500),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: (child, opacity) => FadeTransition(opacity: opacity, child: child),
      child: isLoading ? skeletonWidget : body,
    );
  }
}
