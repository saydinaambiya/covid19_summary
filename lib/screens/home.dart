import 'package:covid19_app/theme/color.dart';
import 'package:covid19_app/theme/font.dart';
import 'package:covid19_app/widgets/stats.dart';
import 'package:covid19_app/widgets/tips.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            const TipsCard(),
            Row(
              children: [
                StatsCard(
                  titleStats: 'Confirmed',
                  valueStats: '2,37,395',
                  colorStats: redColor,
                ),
                const Spacer(),
                StatsCard(
                  titleStats: 'Active',
                  valueStats: '2,37,395',
                  colorStats: blueColor,
                ),
              ],
            ),
            Row(
              children: [
                StatsCard(
                    titleStats: 'Recovered',
                    valueStats: '2,37,395',
                    colorStats: greenColor),
                const Spacer(),
                StatsCard(
                  titleStats: 'Deceased',
                  valueStats: '2,37,395',
                  colorStats: greyColor,
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
