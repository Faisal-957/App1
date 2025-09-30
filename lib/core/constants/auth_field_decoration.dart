import 'package:flutter/material.dart';
import 'package:mvvm/core/constants/colors.dart';
import 'package:mvvm/core/constants/text_style.dart';

final authFieldDecoration = InputDecoration(
  labelText: "Email",
  labelStyle: style16.copyWith(color: Color(0xff737B80)),
  border: const UnderlineInputBorder(
    borderSide: BorderSide(width: 1, color: whiteColor),
  ),
  errorBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: whiteColor, width: 1),
  ),
  enabledBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: whiteColor, width: 1),
  ),
  disabledBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: whiteColor, width: 1),
  ),
  focusedErrorBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: whiteColor, width: 1),
  ),
  focusedBorder: const UnderlineInputBorder(
    borderSide: BorderSide(color: whiteColor, width: 1),
  ),
);

final intrestsearch = InputDecoration(
  prefixIcon: Icon(Icons.search),

  hintText: "Search",
  filled: true,
  fillColor: Color(0xff23262C),

  border: OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: lightBlack),
    borderRadius: BorderRadius.circular(10),
  ),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightBlack, width: 1),
    borderRadius: BorderRadius.circular(10),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightBlack, width: 1),
    borderRadius: BorderRadius.circular(10),
  ),
  disabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightBlack, width: 1),
    borderRadius: BorderRadius.circular(10),
  ),
  focusedErrorBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightBlack, width: 1),
    borderRadius: BorderRadius.circular(10),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: lightBlack, width: 1),
    borderRadius: BorderRadius.circular(10),
  ),
);
