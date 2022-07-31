import 'package:flutter/material.dart';

import '../../../flutter_quill.dart';

class QuillBulletPoint extends StatelessWidget {
  const QuillBulletPoint({
    required this.style,
    required this.width,
    Key? key,
  }) : super(key: key);

  final TextStyle style;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      width: width,
      padding: const EdgeInsetsDirectional.only(end: 10),
      child: AttributeExt.imageBulletBuilder?.call("assets/images/ic_bullet_heart.png"));//Text('•', style: style),
  }
}