import 'package:flutter/material.dart';

Widget background() {
  return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Color(0xFF145373),
              borderRadius: const BorderRadius.only(
                bottomLeft: const Radius.circular(50),
                bottomRight: const Radius.circular(50),
              ),
            ),
          );
}