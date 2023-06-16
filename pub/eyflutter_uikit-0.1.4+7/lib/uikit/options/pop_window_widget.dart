import 'package:eyflutter_uikit/configuration/fonts/kit_icons.dart';
import 'package:eyflutter_uikit/uikit/options/pop_widget.dart';
import 'package:eyflutter_uikit/uikit/widgets/icon_widget.dart';
import 'package:flutter/material.dart';

class PopWindowWidget extends StatefulWidget {
  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 外边距
  final EdgeInsetsGeometry? margin;

  /// 子组件
  final Widget child;

  /// 剪头偏移量
  final Offset? arrowOffset;

  /// 纵向外边距
  final double verticalMargin;

  /// 是否禁用
  final bool? disable;

  final Widget Function() menuBuilder;

  final Function(PopWidgetController controller) buildCall;

  const PopWindowWidget({
    Key? key,
    this.padding,
    this.margin,
    required this.child,
    required this.buildCall,
    this.arrowOffset,
    this.verticalMargin = 0,
    this.disable,
    required this.menuBuilder,
  }) : super(key: key);

  @override
  _PopWindowWidgetState createState() => _PopWindowWidgetState();
}

class _PopWindowWidgetState extends State<PopWindowWidget> {
  PopWidgetController popWidgetController = PopWidgetController();

  @override
  void initState() {
    super.initState();
    widget.buildCall(popWidgetController);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      margin: widget.margin,
      child: (widget.disable ?? false)
          ? widget.child
          : PopWidget(
              controller: popWidgetController,
              arrowColor: Color(0xffFCF9F0),
              child: widget.child,
              horizontalMargin: 0,
              verticalMargin: widget.verticalMargin,
              arrowSize: 42,
              arrowUp: IconWidget(
                KitIcons.arrowUp,
                color: Color(0xffFCF9F0),
                size: 42,
              ),
              arrowOffset: widget.arrowOffset ?? Offset(0, 0),
              // barrierColor: Colors.transparent,
              onPopShowCall: () {},
              onPopHideCall: () {},
              menuBuilder: widget.menuBuilder,
              pressType: PressType.singleClick,
            ),
    );
  }
}
