import 'package:covid19_app/theme/color_style.dart';
import 'package:covid19_app/theme/font_style.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  const TipsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            height: mediaQueryHeight * 0.2,
            width: double.infinity,
            decoration: BoxDecoration(
              color: blueColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 20,
                top: 5,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/doctor.png',
                    fit: BoxFit.cover,
                    height: mediaQueryHeight * 0.3,
                  ),
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Know safety tips and',
                          style: bodyFont,
                        ),
                        Text(
                          'precautions from',
                          style: bodyFont,
                        ),
                        Text(
                          'top Doctors.',
                          style: bodyFont,
                        ),
                        const Spacer(),
                        MaterialButton(
                          color: purpleColor,
                          height: 10,
                          minWidth: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          child: Icon(
                            Icons.arrow_right_alt,
                            size: 30,
                            color: whiteColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
