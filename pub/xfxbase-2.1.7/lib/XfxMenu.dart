part of xfxbase;

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';

// import '../XStylesBase.dart';
// import '../xWidgetsBase.dart';

class XfxMenu extends StatelessWidget {
  final String? label;
  final GestureTapCallback? logOut_OnTap;
  final GestureTapCallback? nameApp_OnTap;
  final Widget? nameApp;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final AlignmentGeometry? alignment;
  final bool? logOut_Visible;
  final Color? menu_BackGroundColor;
  final Color? logOut_BackGroundColor;
  final Widget? logOut_Text;
  final Widget? logOut_Icon;
  final TextStyle? title_Style;
  final List<XMenuGroup> menuGroups;
  final double? width_menuItems;
  final double? height_menuItems;
  bool pinned_Value;
  late Function() tabLink;
  final void Function()? onPressed_PinnedBTN;

  ///Verrà chiamata ogni volta che lo user Tappa l'item del Menu e deve tornare il Widget da mettere nel relativo XTab csomai fosse da aprire
  late void Function(XMenuItem)? onPressed_MenuItem;
  static double menuItem_WidthDefault = 250;
  Function()? functOnSync;
  //CLASS NEW
  XfxMenu(
    this.menuGroups,
    this.tabLink, {
    this.nameApp,
    this.pinned_Value = true,
    this.onPressed_PinnedBTN,
    this.nameApp_OnTap,
    this.height_menuItems,
    this.width_menuItems,
    this.logOut_BackGroundColor,
    this.logOut_Text,
    this.logOut_Icon,
    this.logOut_Visible,
    this.alignment,
    this.menu_BackGroundColor,
    this.label,
    this.title_Style,
    this.title,
    this.padding,
    this.logOut_OnTap,
    this.onPressed_MenuItem,
    this.functOnSync,
  });

  Widget xBuilder_XMenu(XMenuGroup xclMenu) {
    return Column(
      children: [
        XContainerWithLabel(
          xclMenu.label,
          color: xclMenu.color_BTN,
          textStyle: XStyles.xStyTextForLabel(xclMenu.label_Color ?? XColors.foregroundLight),
        ),
        Wrap(
          spacing: 5,
          runSpacing: 5,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.center,
          children: xclMenu.items.map((xclMenuItem) {
            return XBtnbase(
              //margin: EdgeInsets.symmetric(vertical: 5),
              label: xclMenuItem.label,
              label_Color: xclMenuItem.label_Color,
              backGroundColor: xclMenuItem.color_BTN,
              icon: xclMenuItem.icon_BTN,
              icon_Widget: xclMenuItem.image_Icon_BTN != null ? Image.memory(xclMenuItem.image_Icon_BTN!) : null,
              label_Style: XStyles.xStyTextForLargeTitle(xclMenuItem.label_Color),
              width: width_menuItems ?? menuItem_WidthDefault,
              height: height_menuItems ?? 40,
              onPressed: () {
                //xclMenuItem.onPressed
                if (xclMenuItem.onPressed != null) {
                  xclMenuItem.onPressed!(xclMenuItem);
                }
                //onPressed_MenuItem
                else if (onPressed_MenuItem != null) {
                  onPressed_MenuItem!(xclMenuItem);
                }
                tabLink();
              },
            );
          }).toList(),
        ),
        Row(
          children: [
            Expanded(
                child: XBtnbase(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              label: "Sincronizza",
              label_Color: XColors.warning,
              backGroundColor: Colors.grey[800],
              icon: Icons.refresh,
              label_Style: XStyles.xStyTextForLargeTitle(XColors.warning),
              width: width_menuItems ?? menuItem_WidthDefault,
              height: height_menuItems ?? 40,
              onPressed: () {
                if (functOnSync != null) {
                  functOnSync!();
                }
              },
            ))
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: MediaQuery.of(context).size.width < XUtils.widthMin_Layout ? (MediaQuery.of(context).size.width - 10) : 350,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          padding: EdgeInsets.only(top: 20),
          color: menu_BackGroundColor ?? Colors.white,
          child: Column(children: [
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                onPressed_PinnedBTN != null ? onPressed_PinnedBTN!() : null;
              },
              child: Row(children: [
                logOut_Visible ?? false
                    ? XBtnbase(
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        icon: Icons.power_settings_new,
                        width: 50,
                        height: 50,
                        onPressed: logOut_OnTap,
                        icon_Color: Colors.red,
                      )
                    : Container(),
                title != ""
                    ? Expanded(
                        child: Container(
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              title!,
                              style: title_Style ?? XStyles.xStyleText(fontSize: 12, colorText: XColors.backgroundDark, letterSpacing: 1.5),
                            )))
                    : Expanded(child: Container()),
                XBtnbase(
                    icon: MediaQuery.of(context).size.width < XUtils.widthMin_Layout ? Icons.close : (pinned_Value ? Icons.arrow_back_ios : Icons.arrow_forward_ios_rounded),
                    icon_Color: XColors.backgroundLight,
                    width: 40,
                    height: 40,
                    onPressed: () {
                      onPressed_PinnedBTN != null ? onPressed_PinnedBTN!() : null;
                    })
              ]),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Wrap(spacing: 5, runSpacing: 5, alignment: WrapAlignment.start, children: menuGroups.map((xclMenu) => xBuilder_XMenu(xclMenu)).toList()),
                ],
              ),
            )),
            SizedBox(height: 15)
          ]),
        ));
  }
}

class XMenuGroup {
  String key;
  int? idx;
  String? label;
  List<XMenuItem> items = List<XMenuItem>.empty(growable: true);
  Color? label_Color;
  Color? color_BTN;
  IconData? icon_BTN;
  Uint8List? image_Icon_BTN;
  bool expanded = true;
  XMenuGroup(
    this.key, {
    this.label,
    this.idx,
    this.label_Color,
    this.color_BTN,
    this.icon_BTN,
    this.image_Icon_BTN,
    expanded,
    required this.items,
  });
  addMenuItem(XMenuItem item) {
    this.items.add(item);
  }
}

class XMenuItem {
  String key;
  int? idx;
  String? label;
  Color? label_Color;
  Color? color_BTN;
  IconData? icon_BTN;
  Uint8List? image_Icon_BTN;
  XMenuGroup? parent;

  Function(XMenuItem)? onPressed;

  ///uso futuro
  bool active = true;

  XMenuItem(
    this.key, {
    this.label,
    this.idx,
    this.label_Color,
    this.color_BTN,
    this.onPressed,
    this.icon_BTN,
    this.image_Icon_BTN,
    this.parent,
  });
}
