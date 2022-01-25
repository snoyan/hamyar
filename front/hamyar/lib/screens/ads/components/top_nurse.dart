import 'package:hamyar/screens/ads/components/top_card.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../data.dart';

class TopNurse extends StatelessWidget {
  const TopNurse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Wrap(
              children: List.generate(
                Nurses.length,
                (index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: TopCard(
                        nurse: Nurses[index],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Wrap(
//             children: List.generate(
//               Nurses.length,
//               (index) {
//                 return TopCard(
//                   nurse: Nurses[index],
//                 );
//               },
//             ),
//           ),
//         ),