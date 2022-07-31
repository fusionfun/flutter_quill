import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

/// Created by Haoyi on 2022/7/27

typedef ImageBulletBuilder = Widget Function(String uri);

class AttributeExt {
  static final GoogleFontAttribute googleFont = GoogleFontAttribute(null);

  static final ImageListAttribute imageList = ImageListAttribute(null);

  static ImageBulletBuilder? imageBulletBuilder;

  static final Map<String, Attribute> registry = LinkedHashMap.of({
    AttributeExt.googleFont.key: AttributeExt.googleFont,
    AttributeExt.imageList.key: AttributeExt.imageList
  });

  static ImageListAttribute buildImageListBullet(String assetPath) {
    return ImageListAttribute(assetPath);
  }
}

class GoogleFontAttribute extends Attribute<String?> {
  GoogleFontAttribute(String? val) : super('google_font', AttributeScope.INLINE, val);
}


class ImageListAttribute extends Attribute<String?> {
  ImageListAttribute(String? val) : super('image_list', AttributeScope.BLOCK, val);
}