import 'package:covid19_app/theme/color.dart';
import 'package:covid19_app/theme/font.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mediaQueryHeight * 0.6,
            width: mediaQueryWidth,
            child: Image.asset(
              'assets/images/illustration.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
              top: 35,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Be aware',
                      style: titleFont,
                    ),
                    Text(
                      'Stay healthy',
                      style: titleFont,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Welcome to COVID-19 information portal.',
                      style: subtitleFont,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              right: 35,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'GET STARTED',
                  style: semiboldFont,
                ),
                const SizedBox(width: 20),
                MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    height: 60,
                    minWidth: 60,
                    color: purpleColor,
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Icon(
                      FontAwesomeIcons.arrowRight,
                      color: whiteColor,
                    ))
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
