// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
class ClipPathClass extends CustomClipper<Path>{
  @override
   getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height-60);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) =>false;
      
}
     class ClipinfoClass extends CustomClipper<Path>{
  @override
   getClip(Size size) {
    var path = Path();
   path.lineTo(0.0, size.height-60);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height - 60);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper oldClipper) =>false;
      
}