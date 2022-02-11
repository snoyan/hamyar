import 'package:hamyar/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../components/default_button.dart';
import '../../components/form_helper.dart';
import '../../net/nurse_model.dart';
import 'components/header.dart';
import 'components/nurse_call.dart';
import 'components/nurse_description.dart';
import 'components/nurse_document.dart';
import 'components/nurse_information.dart';

class NurseInfo extends StatelessWidget {
  const NurseInfo({Key? key}) : super(key: key);
  static String routeName = '/person_info';
  @override
  Widget build(BuildContext context) {
    final NurseDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as NurseDetailsArguments;
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kBaseColor2,
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return RatingPopUp();
                });
          },
          child: const Icon(
            Icons.star,
            size: 32,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.only(bottom: 15),
          decoration: const BoxDecoration(
            color: kBaseColor2,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.39,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(70, 0),
                      primary: kBaseColor5,
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        //isScrollControlled: true,
                        context: context,
                        builder: (context) => NurseDocument(
                          nurse: agrs.nurse,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      );
                    },
                    child: const Text(
                      'دیدن مدارک',
                      style: TextStyle(fontSize: 12, fontFamily: 'IranSans'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 45,
                  width: MediaQuery.of(context).size.width * 0.39,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(70, 0),
                      primary: kBaseColor4,
                      padding: const EdgeInsets.all(0),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        //isScrollControlled: true,

                        context: context,
                        builder: (context) => NurseCall(
                          nurse: agrs.nurse,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      );
                    },
                    child: const Text(
                      'اطلاعات تماس',
                      style: TextStyle(fontSize: 12, fontFamily: 'IranSans'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: kBaseColor1,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.02,
                  color: kBaseColor2,
                ),
                Header(
                  nurse: agrs.nurse,
                ),
                NurseInformation(agrs: agrs),
                const SizedBox(
                  height: 10,
                ),
                NurseDescription(agrs: agrs)
              ],
            ),
          ),
        ));
  }
}

class RatingPopUp extends StatefulWidget {
  const RatingPopUp({Key? key}) : super(key: key);

  @override
  _RatingPopUpState createState() => _RatingPopUpState();
}

class _RatingPopUpState extends State<RatingPopUp> {
  bool isPhoneNumRegistered = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.08,
        vertical: MediaQuery.of(context).size.height * 0.3,
      ),
      child: isPhoneNumRegistered ? Container() : PhoneSubmit(),
    );
  }

  Padding PhoneSubmit() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Text(
              'جهت ثبت امتیاز شماره موبایل \n          خود را وارد کنید',
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'iransans',
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          // phone(true, "شماره موبایل", context)
          SizedBox(
            height: 60,
            width: 300,
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
                  labelText: 'شماره موبایل',
                  labelStyle: const TextStyle(
                      color: Colors.black, fontFamily: 'iransans'),
                  hintText: 'شماره موبایل',
                  hintStyle: TextStyle(
                      color: Colors.grey.withOpacity(0.5),
                      fontFamily: 'iransans')),
              cursorColor: kBaseColor2,
            ),
          ),
          DefaultButton(
            color: kBaseColor5,
            text: 'تایید',
            press: () {
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return giveRate(context);
                  });
            },
          )
        ],
      ),
    );
  }

  Card giveRate(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.08,
        vertical: MediaQuery.of(context).size.height * 0.3,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'امتیاز شما',
            style: TextStyle(
                color: Colors.black, fontFamily: 'iransans', fontSize: 32),
          ),
          RatingBar.builder(
            maxRating: 10,
            itemSize: 42,
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
            itemBuilder: (context, x) => const Icon(
              Icons.star,
              size: 32,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          DefaultButton(
            color: kBaseColor5,
            text: 'تایید',
            press: () {
              Navigator.pop(context);
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.08,
                        vertical: MediaQuery.of(context).size.height * 0.43,
                      ),
                      child: const Center(
                        child: Text(
                          'امتیاز شما با موفقیت ثبت شد',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'iransans',
                            fontSize: 19,
                          ),
                        ),
                      ),
                    );
                  });
            },
          )
        ],
      ),
    );
  }
}

class NurseDetailsArguments {
  final Nurse nurse;

  NurseDetailsArguments({required this.nurse});
}
