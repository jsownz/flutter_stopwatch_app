import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

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
                text: "Measure \n",
                style: kWelcomeFont.copyWith(
                  color: kYellowColor,
                ),
              ),
              TextSpan(
                  text: "time ",
                  style: kWelcomeFont.copyWith(
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.italic,
                  )),
              TextSpan(
                text: "of your ",
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
          "Measure the time of any situation, like \nsports, cooking, games, education, etc.",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: 'Outfit',
            fontSize: 16.0,
            color: Color(0xFF8F8F8F),
          ),
        ),
        const SizedBox(height: 50.0),
        const Icon(
          Icons.timer_outlined,
          color: kYellowColor,
          size: 225.0,
        ),
      ],
    );
  }
}
