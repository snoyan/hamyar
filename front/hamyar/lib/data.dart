// ignore_for_file: unused_import, non_constant_identifier_names

import 'package:hamyar/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/nurse.dart';
import 'models/states.dart';

class Data extends ChangeNotifier {
  String mainTitle = 'صفحه\bاصلی';
  List<Nurse> allNurse = Nurses;
}

List<Nurse> Nurses = [
  Nurse(
    name: 'مهسا میرزاخانی',
    family: '',
    docPath: '',
    username: '',
    gender: Gender.female,
    email: 'miladpython@gmail.com',
    phone: "09123456578",
    state: 0,
    age: 27,
    city: "زنجان",
    workConditions:
        "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
    xpYEar: 5,
    rating: "8/75",
    imgpath: "assets/image/person.jpg",
  ),
  Nurse(
      name: 'مهتاب علیزاده',
      docPath: '',
      username: '',
      gender: Gender.female,
      email: 'miladpython@gmail.com',
      phone: "09123456578",
      state: 0,
      age: 25,
      city: "تهران",
      family: '',
      workConditions:
          "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
      xpYEar: 5,
      rating: "8/75",
      imgpath: "assets/image/person2.jpg"),
  Nurse(
    name: 'امیر امینی',
    docPath: '',
    username: '',
    gender: Gender.female,
    email: 'miladpython@gmail.com',
    phone: "09123456578",
    state: 0,
    family: '',
    age: 35,
    city: "مشهد",
    workConditions:
        "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
    xpYEar: 5,
    rating: "8/75",
    imgpath: "assets/image/person.jpg",
  ),
  Nurse(
    name: 'نگین احمدی',
    family: '',
    docPath: '',
    username: '',
    gender: Gender.female,
    phone: "09123456578",
    state: 0,
    age: 27,
    email: 'miladpython@gmail.com',
    city: "کرج",
    workConditions:
        "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
    xpYEar: 4,
    rating: "8/75",
    imgpath: "assets/image/person.jpg",
  ),
  Nurse(
      name: 'مبینا امینی',
      family: '',
      docPath: '',
      username: '',
      gender: Gender.female,
      email: 'miladpython@gmail.com',
      phone: '09123456578',
      state: 0,
      age: 39,
      city: "بندرعباس",
      workConditions:
          "کار سخت وقت گیری نیست (محصول گذاشتن وردپرس ،رفع خطاها از جمله هاست افزونه قالب ، ویرایش قیمت و و انواع ویژگی های محصول ،طراحی بنر برای سایت در ایام خاص بلک فریدی ماه رمضان و ..... ، و تولید محتوا اینستا گرام  پست اینستاگرام و استوری موشن و...... )یعنی به یه نفر که گرافیک و وردپرسش عالی باشه بصورت دور کار با بیوگرافی نمونه کار کامل میخوام از نظر هزینه برای هریک از اینا باهم توافق میکنیم ",
      xpYEar: 3,
      rating: '8/75',
      imgpath: "assets/image/person2.jpg"),
];
List<StateList> states = [
  StateList("آذربایجان شرقی"),
  StateList("آذربایجان غربی"),
  StateList("اردبیل"),
  StateList("اصفهان"),
  StateList("البرز"),
  StateList("ایلام"),
  StateList("بوشهر"),
  StateList("تهران"),
  StateList("چهارمحال و بختیاری"),
  StateList("خراسان جنوبی"),
  StateList("خراسان رضوی"),
  StateList("خراسان شمالی"),
  StateList("خوزستان"),
  StateList("زنجان"),
  StateList("سمنان"),
  StateList("سیستان و بلوچستان"),
  StateList("فارس"),
  StateList("قزوین"),
  StateList("قم"),
  StateList("کردستان"),
  StateList("کرمان"),
  StateList("کرمانشاه"),
  StateList("کهگیلویه و بویراحمد"),
  StateList("گلستان"),
  StateList("لرستان"),
  StateList("گیلان"),
  StateList("مازندران"),
  StateList("مرکزی"),
  StateList("هرمزگان"),
  StateList("همدان"),
  StateList("یزد"),
];
