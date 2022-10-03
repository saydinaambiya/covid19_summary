import 'dart:convert';

import 'package:covid19_app/models/summary.dart';
import 'package:covid19_app/theme/color.dart';
import 'package:covid19_app/theme/font.dart';
import 'package:covid19_app/widgets/stats.dart';
import 'package:covid19_app/widgets/tips.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  late Summary dataSummary;

  Future getSummary() async {
    var response = await http.get(Uri.parse('https://covid19.mathdro.id/api'));

    Map<String, dynamic> data =
        json.decode(response.body) as Map<String, dynamic>;
    dataSummary = Summary.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: FutureBuilder(
            future: getSummary(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text(
                    'LOADING DATA...',
                    style: bodyFont,
                  ),
                );
              }
              return Column(
                children: [
                  const TipsCard(),
                  Row(
                    children: [
                      StatsCard(
                        titleStats: 'Confirmed',
                        valueStats: "${dataSummary.confirmed.value}",
                        colorStats: redColor,
                      ),
                      const Spacer(),
                      StatsCard(
                        titleStats: 'Active',
                        valueStats: "${dataSummary.recovered.value}",
                        colorStats: blueColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      StatsCard(
                          titleStats: 'Recovered',
                          valueStats: "${dataSummary.recovered.value}",
                          colorStats: greenColor),
                      const Spacer(),
                      StatsCard(
                        titleStats: 'Deaths',
                        valueStats: "${dataSummary.deaths.value}",
                        colorStats: greyColor,
                      ),
                    ],
                  ),
                ],
              );
            }),
      ),
    ));
  }
}
