import 'package:flutter/material.dart';

const Color kBaseColor0 = Color(0xFFF5F6F9);

///white
const Color kBaseColor1 = Color(0xFFFFE6E6);

///white
const Color kBaseColor2 = Color(0xfff7b4dd);

///Veri Peri
const Color kBaseColor3 = Color(0xff97999b);

///Ultimate Gray
const Color kBaseColor4 = Color(0xff104581);

///Classic Blueconst
const Color kBaseColor5 = Color(0xFFAA95FA); ///

enum Gender { female,male }

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "لطفا ایمیل خود را وارد کنید";
const String kInvalidEmailError = "ایمیل وارد شده نا معتبر است!";
const String kPassNullError = "رمز عبور خود را وارد کنید";
const String kShortPassError = "رمز وارد شده کوتاه است";
const String kMatchPassError = "رمز وارد شده همخوانی ندارد";
const String kUsernameNullError = "نام کاربری خود را وارد کنید";
const String kShortUserNameError =
    "نام کاربری وارد شده نباید کمتر از سه حرف باشد";
const String kNameNullError = "نام خود را وارد کنید";
const String kPhoneNumberNullError = "شماره تماس خود را وارد کنید";
const String kAddressNullError = "آدرس خود را وارد کنید";
