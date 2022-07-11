// ignore_for_file: file_names, prefer_const_constructors_in_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class ListPromo extends StatelessWidget {
   ListPromo({ 
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image  ;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 100,
        width: 200,
         child : SvgPicture.asset('$image', fit : BoxFit.contain)
      ),
    );
  }
}