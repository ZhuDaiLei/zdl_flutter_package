import 'package:flutter/material.dart';
import '../widget/z_text.dart';
import '../../utils/z_color_util.dart';

/// @author zdl
/// date 2020/11/9 16:49
/// email zdl328465042@163.com
/// description 弹窗提示widget
class ZDialogHint extends StatelessWidget {
  final String msg;
  final ZDialogHintEnum enumType;
  final double width;
  final double height;
  final Color bgColor;
  final Color fontColor;
  final double fontSize;
  final Widget noDataIcon;
  final double drawablePadding;

  const ZDialogHint({
    @required this.msg,
    @required this.enumType,
    this.width = 120,
    this.height = 90,
    this.bgColor,
    this.fontColor = Colors.white,
    this.fontSize = 12,
    this.noDataIcon,
    this.drawablePadding = 10,
  });

  @override
  Widget build(BuildContext context) {
    Widget icon;
    switch (enumType) {
      case ZDialogHintEnum.success:
        icon = Icon(Icons.check_circle_outline, color: Colors.white);
        break;
      case ZDialogHintEnum.fail:
      case ZDialogHintEnum.error:
        icon = Icon(Icons.cancel_outlined, color: Colors.white);
        break;
      case ZDialogHintEnum.warn:
        icon = Icon(Icons.error_outline, color: Colors.white);
        break;
    }
    return Center(
      child: ZText(
        msg,
        width: width,
        height: height,
        borderRadius: BorderRadius.circular(8),
        alignment: Alignment.center,
        bgColor: bgColor ?? ZColorUtil.color_333.withOpacity(0.9),
        fontColor: fontColor,
        fontSize: fontSize,
        drawableTop: noDataIcon == null ? icon : noDataIcon,
        drawableTopPadding: drawablePadding,
      ),
    );
  }
}

enum ZDialogHintEnum { success, fail, error, warn }
