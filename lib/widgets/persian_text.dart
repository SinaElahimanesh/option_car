import 'package:flutter/material.dart';

class PersianText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final bool? softWrap;
  const PersianText(
    this.text, {
    this.style,
    this.softWrap,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
      style: style,
      softWrap: softWrap,
    );
  }
}
