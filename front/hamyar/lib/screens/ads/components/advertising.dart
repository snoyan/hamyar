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
            Nurses.length,
            (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: PersonCard(
                  nurse: Nurses[index],
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
