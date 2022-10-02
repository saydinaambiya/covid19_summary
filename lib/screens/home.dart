import 'package:covid19_app/shared/color_style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Stack(
            children: [
              Container(
                color: blueColor,
                height: mediaQueryHeight * 0.18,
              ),
              Positioned(
                bottom: -10,
                child: SizedBox(
                  child: Image.asset(
                    'assets/images/doctor.png',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
