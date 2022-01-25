import 'package:flutter/material.dart';

import '../../components/custom_surfix_icon.dart';
import '../../components/default_button.dart';
import '../../components/form_error.dart';
import '../../constant.dart';
import 'components/no_account_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static String routeName = "/login";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;
  String? email;
  String? userName;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
        errors.clear();
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Text(
                    "خوش آمدید",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontFamily: 'Iransans',
                      // fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    "جهت پیوستن به جمع پرستاران میبایست حساب کاربری داشته و یا ثبت نام کنید!  ",
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        buildUsernameFormField(),
                        SizedBox(height: 30),
                        buildPasswordFormField(),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Checkbox(
                              value: remember,
                              activeColor: kBaseColor2,
                              onChanged: (value) {
                                setState(() {
                                  remember = value;
                                });
                              },
                            ),
                            Text("مرا به خاطر بسپار"),
                            Spacer(),
                            GestureDetector(
                              onTap: () {},
                              /*() => Navigator.pushNamed(
                    context, ForgotPasswordScreen.routeName),*/
                              child: const Text(
                                "فراموشی رمز عبور",
                                style: TextStyle(
                                    decoration: TextDecoration.underline),
                              ),
                            )
                          ],
                        ),
                        FormError(errors: errors),
                        const SizedBox(height: 20),
                        DefaultButton(
                          text: "ادامه",
                          press: () async {
                            /*  removeError();
                                if (_formKey.currentState!.validate()) {
                                  _formKey.currentState!.save();
                                  setState(() {
                                    showSpinner = true;
                                  });
                                  try {
                                    //Login - Returns the access token on success.
                                    await NetworkHelper()
                                        .wooCommerce
                                        .authenticateViaJWT(
                                            username: userName,
                                            password: password);
                                    bool isLoggedIn = await NetworkHelper()
                                        .wooCommerce
                                        .isCustomerLoggedIn();
                                    if (isLoggedIn) {
                                      setState(() {
                                        showSpinner = true;
                                      });
                                      Navigator.pushNamed(
                                          context, HomeScreen.routeName);
                                    } else {
                                      print(
                                          ' username or password was incorrect');
                                    }
                                  } catch (e) {
                                    print(e);
                                  }
                                }*/
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  /* Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           SocalCard(
                             icon: "assets/icons/google-icon.svg",
                             press: () {},
                           ),
                           SocalCard(
                             icon: "assets/icons/facebook-2.svg",
                             press: () {},
                           ),
                           SocalCard(
                             icon: "assets/icons/twitter.svg",
                             press: () {},
                           ),
                         ],
                       ),
                      */

                   NoAccountText(),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }

  //Password field styles and builder
  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        password = value;
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "رمز عبور",
        hintText: "رمز عبور را وارد کنید",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  //Username field styles and builder
  TextFormField buildUsernameFormField() {
    return TextFormField(
      onSaved: (newValue) => userName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kUsernameNullError);
        } else if (value.length >= 3) {
          removeError(error: kShortUserNameError);
        }
        return null;
      },
      validator: (value) {
        userName = value;
        if (value!.isEmpty) {
          addError(error: kUsernameNullError);
          return "";
        } else if (value.length < 3) {
          addError(error: kShortUserNameError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "نام کاربری",
        hintText: "نام کاربری را وارد کنید",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }
}
