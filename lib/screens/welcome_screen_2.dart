import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RichText(
          textAlign: TextAlign.left,
          softWrap: true,
          text: TextSpan(
            children: [
              TextSpan(
                text: "Welcome \n",
                style: kWelcomeFont.copyWith(
                  color: kYellowColor,
                ),
              ),
              TextSpan(
                  text: "to this ",
                  style: kWelcomeFont.copyWith(
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  )),
              TextSpan(
                text: "Page ",
                style: kWelcomeFont.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: kYellowColor,
                ),
              ),
              TextSpan(
                text: "Activities",
                style: kWelcomeFont,
              ),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        const Text(
          "Consectetur sint ipsum commodo mollit eu \nvelit culpa magna adipisicing amet.",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16.0,
            color: Color(0xFF8F8F8F),
          ),
        ),
        const SizedBox(height: 50.0),
        const Icon(
          Icons.car_repair,
          color: kYellowColor,
          size: 225.0,
        ),
      ],
    );
  }
}
