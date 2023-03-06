import 'package:flutter/material.dart';

Color base(hexCode) => Color(int.parse("0xFF$hexCode"));

class AppColours {
  static final primaryWhite = base("FFFFFF");
  static final primaryCream = base("FFDF90");
  static final primaryGrey = base("#2D2D2D");
}
