import 'package:share/share.dart';
import 'package:flutter/material.dart';

Function social(BuildContext context) {
  final RenderBox box = context.findRenderObject();
  Share.share("Go fuck yourself",
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}
