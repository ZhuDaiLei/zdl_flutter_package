import 'package:flutter/material.dart';

/// @author zdl
/// date 2020/10/30 10:50
/// email zdl328465042@163.com
/// description 文本控件
///
/// 图层从上到下:bgImg>gradient>bgColor
/// 设置了shape: BoxShape.circle，则不能再设置borderRadius
/// border: Border.all(color: Colors.black, width: 2)
/// borderRadius: BorderRadius.all(Radius.circular(5))
/// shape: BoxShape.circle
/// 阴影位置由offset决定,阴影模糊层度由blurRadius大小决定（大就更透明更扩散），阴影模糊大小由spreadRadius决定
/// boxShadow: [BoxShadow(color: Colors.green,offset: Offset(5, 5),blurRadius: 10,spreadRadius: 5,)]
/// 环形渲染:RadialGradient，扫描式渐变:SweepGradient，线性渐变:LinearGradient
/// gradient: LinearGradient(colors: [Colors.red, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight)
class ZText extends StatelessWidget {
  ///Text属性
  final String text;
  final Color fontColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;

  ///外层Container属性
  final double width;
  final double height;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final AlignmentGeometry alignment;
  final Color bgColor;
  final String bgImg;
  final BoxBorder border;
  final BorderRadiusGeometry borderRadius;
  final List<BoxShadow> boxShadow;
  final BoxShape shape;
  final Gradient gradient;

  const ZText({
    @required this.text,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.alignment,
    this.bgColor,
    this.bgImg,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.shape = BoxShape.rectangle,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    var textWidget = Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
          color: fontColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
    var outerShell = Container(
      width: width,
      height: height,
      alignment: alignment,
      decoration: BoxDecoration(
        color: bgColor,
        border: border,
        borderRadius: borderRadius,
        boxShadow: boxShadow,
        shape: shape,
        gradient: gradient,
        image: null == bgImg
            ? null
            : DecorationImage(image: AssetImage(bgImg), fit: BoxFit.cover),
      ),
      child: textWidget,
    );
    return outerShell;
  }
}
