import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

/// Created by Haoyi on 2022/7/27

class QuillBulletImage extends StatelessWidget {
  const QuillBulletImage({
    required this.image,
    this.width = 28,
    Key? key,
  }) : super(key: key);

  final double width;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.topEnd,
      width: width,
      padding: const EdgeInsetsDirectional.only(end: 10),
      child:  AttributeExt.imageBulletBuilder?.call("assets/images/ic_bullet_heart.png")
    );
  //   print("BulletImage build!!");
  //   return SizedBox(width: 24, height: 24, child: Center(
  //     child: Image(image: imageProvider, width:20, height: 20, fit: BoxFit.fill),
  //   ));
  }
}

