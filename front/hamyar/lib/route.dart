import 'package:hamyar/screens/login/login_popup.dart';
import 'package:hamyar/screens/nurseInfo/person_info_screen.dart';
import 'package:hamyar/screens/ads/ads_screen.dart';
import 'package:hamyar/screens/nurseProfile/components/edit_profile.dart';
import 'package:hamyar/screens/nurse_signPage/nurse_signPage.dart';
import 'package:hamyar/screens/set_state.dart/setState_screen.dart';
import 'package:flutter/material.dart';

import 'screens/ads/ads_screen.dart';
import 'screens/main_screen/main_screen.dart';
import 'screens/nurseInfo/person_info_screen.dart';
import 'screens/nurseProfile/profile_screen.dart';
import 'screens/nurse_signPage/nurse_signPage.dart';
import 'screens/search/search_screen.dart';
import 'screens/signup/signup_popup.dart';

final Map<String, WidgetBuilder> myRoutes = {
  MainScreen.routeName: (context) => const MainScreen(),
  AdsScreen.routeName: (context) =>
      AdsScreen(stateindex: MainScreen.selectedState),
  NurseInfo.routeName: (context) => const NurseInfo(),
  SearchScreen.routeName: (cosntext) => const SearchScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  SetState.routeName: (context) => const SetState(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  EditProfileScreen.routeName: (context) => EditProfileScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
};
