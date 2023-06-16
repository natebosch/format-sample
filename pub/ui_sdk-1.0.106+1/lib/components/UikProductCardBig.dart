import 'package:ui_sdk/components/UikWidget.dart';
import 'package:ui_sdk/components/WidgetType.dart';
import 'package:ui_sdk/props/UikTextProps.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../props/UikProductCardBigProps.dart';

class UikProductCardBig extends UikWidget {
  WidgetType _widgetType;
  UikProductCardBigProps _uikProductCardBigProps;
  UikProductCardBig(this._widgetType, this._uikProductCardBigProps)
      : super(_widgetType, _uikProductCardBigProps);

  @override
  _UikProductCardBigState createState() =>
      _UikProductCardBigState(_uikProductCardBigProps);
}

class _UikProductCardBigState extends State<UikProductCardBig> {
  UikProductCardBigProps _uikProductCardBigProps;
  _UikProductCardBigState(this._uikProductCardBigProps);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 164,
          height: 269,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --------------- Image --------------------//
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 7),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    width: 164,
                    height: 198,
                    // margin: EdgeInsets.only(right: 16),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        fit: BoxFit.fill,
                        image: NetworkImage(_uikProductCardBigProps.imageUrl),
                      ),
                    ),
                  ),
                  if (_uikProductCardBigProps.isBadge == true) ...[
                    Container(
                        margin: EdgeInsets.only(top: 8, left: 8),
                        // width: 100,
                        // height: 24,
                        child: _uikProductCardBigProps.badge!)
                  ]
                ],
              ),

              // ----------------- PRICE AND FAV ICON -----------//
              Container(
                width: 164,
                height: 24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + _uikProductCardBigProps.productPrice,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff212121),
                      ),
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      child: _uikProductCardBigProps.favIcon,
                    )
                  ],
                ),
              ),

              // ---------------- product description --------------//
              Container(
                width: 164,
                height: 36,
                margin: EdgeInsets.only(top: 4),
                child: Text(
                  _uikProductCardBigProps.productDescription,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
