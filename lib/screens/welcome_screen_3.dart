import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

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
                text: "Another \n",
                style: kWelcomeFont.copyWith(
                  color: kYellowColor,
                ),
              ),
              TextSpan(
                  text: "Screen ",
                  style: kWelcomeFont.copyWith(
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  )),
              TextSpan(
                text: "For ",
                style: kWelcomeFont.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: kYellowColor,
                ),
              ),
              TextSpan(
                text: "Testing",
                style: kWelcomeFont,
              ),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        const Text(
          "Nulla mollit adipisicing do cillum esse \ndolore amet pariatur.",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16.0,
            color: Color(0xFF8F8F8F),
          ),
        ),
        const SizedBox(height: 50.0),
        const Icon(
          Icons.refresh,
          color: kYellowColor,
          size: 225.0,
        ),
      ],
    );
  }
}
