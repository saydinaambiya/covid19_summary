import 'package:covid19_app/theme/color.dart';
import 'package:covid19_app/theme/font.dart';
import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  const StatsCard({
    Key? key,
    required this.titleStats,
    required this.valueStats,
    required this.colorStats,
  }) : super(key: key);

  final String titleStats;
  final String valueStats;
  final Color colorStats;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      height: mediaQueryHeight * 0.17,
      width: mediaQueryWidth * 0.43,
      decoration: BoxDecoration(
        color: colorStats.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titleStats,
              style: titleCard(colorStats),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  valueStats,
                  style: valueCard(colorStats),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
