import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 60,
        ),
        RichText(
          textAlign: TextAlign.left,
          softWrap: true,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Message\n',
                style: kWelcomeFont.copyWith(
                  color: kYellow,
                ),
              ),
              TextSpan(
                text: 'time ',
                style: kWelcomeFont.copyWith(
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                ),
              ),
              TextSpan(
                text: 'of your ',
                style: kWelcomeFont.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: kYellow,
                ),
              ),
              TextSpan(text: 'Animals', style: kWelcomeFont),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        const Text(
          "Amet anim in officia consequat Lorem exercitation Lorem est nisi sunt.",
          style: TextStyle(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(height: 60.0),
        const Icon(Icons.refresh, size: 250, color: kYellow),
      ],
    );
  }
}
