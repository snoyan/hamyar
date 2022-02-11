import 'package:hamyar/net/welcome_screen.dart';
import 'package:hamyar/screens/ads/components/person_card.dart';
import 'package:flutter/material.dart';

import '../../../data.dart';

class Advertising extends StatelessWidget {
  const Advertising({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Wrap(children: [
          ...List.generate(
            WelcomeScreen.nurseList.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PersonCard(
                  nurse: WelcomeScreen.nurseList[index],
                ),
              );
            },
          ),
          const SizedBox(
            height: 330,
          )
        ]),
      ),
    );
  }
}
