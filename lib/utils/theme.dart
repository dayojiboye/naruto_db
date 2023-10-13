import 'package:flutter/material.dart';

const Color kPrimary = Color(0XFFFF6600);
const Color kTextPrimary = Color(0XFF1b1b1b);
const Color kMuted = Color(0XFFCCCCCC);
const Color kGhost = Color(0XFFEEEEEE);
const Color kWhite = Color(0XFFFFFFFF);
Color? kError = Colors.red[400];

themeData(context) => ThemeData(
      fontFamily: "ClashGrotesk-Regular",
      useMaterial3: false,
      primaryColor: kPrimary,
      brightness: Brightness.light,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
    );
