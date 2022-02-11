import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../constant.dart';

//age value
int val = 0;
int xpyearVal = 0;
//String name and family fields
Container nameField(bool? isWriteAble, String label, BuildContext context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * 0.45,
    child: TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
    ),
  );
}

Container emailField(bool? isWriteAble, String label, BuildContext context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width,
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
    padding: const EdgeInsets.symmetric(
        //  vertical: 40.0,
        //  horizontal: 20,
        ),
    child: TextFormField(
      validator: EmailValidator(errorText: 'enter a valid email address'),
      decoration: InputDecoration(
          /* icon: SvgPicture.asset(
            'assets/icons/User.svg',
            height: 18,
            color: kBaseColor3,
          ),*/
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
    ),
  );
}

//age field
Container ageField(bool? isWriteAble, String label, BuildContext context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * 0.45,
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),

    child: TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle:
              const TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        val = int.parse(value);
        if (val <= 1350 || val >= 1380) {
          print('سال بین 1350 الی 1380 باید باشد!');
        }
      },
      onSaved: (value) {},
    ),
  );
}

Container city(bool? isWriteAble, String label, BuildContext context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * 0.45,
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
    padding: const EdgeInsets.symmetric(
        //  vertical: 40.0,
        //  horizontal: 20,
        ),
    child: TextFormField(
      decoration: InputDecoration(
          /* icon: SvgPicture.asset(
            'assets/icons/User.svg',
            height: 18,
            color: kBaseColor3,
          ),*/
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
    ),
  );
}

Container phone(bool? isWriteAble, String label, BuildContext context) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * 0.58,
    child: TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
    ),
  );
}

Container gender(String title, bool value, VoidCallback changeState(value)) {
  return Container(
    child: Row(
      children: <Widget>[
        const SizedBox(
          width: 10,
        ), //SizedBox
        Text(
          title,
          style: const TextStyle(
              fontSize: 17.0, fontFamily: 'iransans', color: Colors.black),
        ),
        const SizedBox(width: 10), //SizedBox
        /** Checkbox Widget **/
        Checkbox(
          value: value,
          onChanged: (value) {
            changeState(value);
          },
        ), //Checkbox
      ], //<Widget>[]
    ), //Row
  );
}

Container workCondition(bool? isWriteAble, String label, BuildContext context) {
  return Container(
    height: 120,
    width: MediaQuery.of(context).size.width,
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),
    padding: const EdgeInsets.symmetric(
        //  vertical: 40.0,
        //  horizontal: 20,
        ),
    child: TextFormField(
      maxLines: 7,
      minLines: 3,
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
    ),
  );
}

//years pf working experience
Container xpyearField(
  bool? isWriteAble,
  String label,
  BuildContext context,
) {
  return Container(
    height: 60,
    width: MediaQuery.of(context).size.width * 0.45,
    // decoration: BoxDecoration(borderRadius: BorderRadius.circular(60)),

    child: TextFormField(
      decoration: InputDecoration(
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: kBaseColor2,
              width: 2,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              color: kBaseColor2,
              width: 2.0,
            ),
          ),
          labelText: label,
          labelStyle:
              const TextStyle(color: Colors.black, fontFamily: 'iransans'),
          hintText: label,
          hintStyle: TextStyle(
              color: Colors.grey.withOpacity(0.5), fontFamily: 'iransans')),
      cursorColor: kBaseColor2,
      keyboardType: TextInputType.number,
      onChanged: (value) {
        xpyearVal = int.parse(value);
        if (xpyearVal <= 0 || val >= 50) {
          print('عدد مابین 0 و 50 باید باشد!');
        }
      },
      onSaved: (value) {},
    ),
  );
}

//profile image box
class ProfilePic extends StatelessWidget {
  bool isEditAble;
  ProfilePic({
    required this.isEditAble,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 98,
      width: 98,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/image/Profile-Image.png"),
          ),
          if (isEditAble) editPic()
        ],
      ),
    );
  }

  Positioned editPic() {
    return Positioned(
      left: -16,
      bottom: 0,
      child: SizedBox(
        height: 46,
        width: 46,
        child: TextButton(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
              side: BorderSide(color: Colors.white),
            ),
            primary: Colors.white,
            backgroundColor: Color(0xFFF5F6F9),
          ),
          onPressed: () {},
          child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
        ),
      ),
    );
  }
}
