import 'package:flutter/material.dart';
import 'package:courier_delivery_service_app/size_config.dart';

const kPrimaryColor = Color(0xFF4A3298);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryDarkColor = Color(0xFFFF7643);

const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF4A329E), Color(0xFF4A3268)],
);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);
