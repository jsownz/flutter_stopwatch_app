import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class WelcomeScreen3 extends StatelessWidget {
  const WelcomeScreen3({super.key});

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
                text: 'Measure\n',
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
              TextSpan(text: 'Activities', style: kWelcomeFont),
            ],
          ),
        ),
        const SizedBox(height: 30.0),
        const Text(
          "Cupidatat in cupidatat proident aliquip. Exercitation ipsum sit ea incididunt magna dolore occaecat.",
          style: TextStyle(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
            color: kSecondaryColor,
          ),
        ),
        const SizedBox(height: 60.0),
        const Icon(Icons.fire_truck, size: 250, color: kYellow),
      ],
    );
  }
}
