import 'package:flutter/material.dart';

const Color kPrimaryBackgroundColor = Color(0xFF141413);
const Color kYellowColor = Color(0xFFFFF500);
const Color kBackButtonColor = Color(0xFF282828);
const Color kGray = Color(0xFF4C4C4C);
const Color kLightGray = Color(0xFF696969);

ButtonStyle kYellowButton = ElevatedButton.styleFrom(
  padding: const EdgeInsets.only(
    top: 20.0,
    bottom: 20.0,
  ),
  backgroundColor: kYellowColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      20.0,
    ),
  ),
);

ButtonStyle kOutlineButton = OutlinedButton.styleFrom(
  padding: const EdgeInsets.only(
    top: 20.0,
    bottom: 20.0,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      20.0,
    ),
  ),
  side: const BorderSide(color: kYellowColor),
);

ButtonStyle kOutlineButtonEllipsis = OutlinedButton.styleFrom(
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
      20.0,
    ),
  ),
  side: const BorderSide(color: kBackButtonColor),
);

TextStyle kWelcomeFont = const TextStyle(
  fontFamily: 'Outfit',
  fontSize: 62,
  color: Colors.white,
  height: .9,
);

TextStyle kButtonFont = const TextStyle(
  color: kPrimaryBackgroundColor,
  fontSize: 15.0,
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w500,
);

TextStyle kLabelYellow = const TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w500,
  color: kYellowColor,
);

TextStyle kLabelGray = kLabelYellow.copyWith(
  color: kGray,
);

TextStyle kLabelLightGray = kLabelYellow.copyWith(
  color: kLightGray,
);

TextStyle kLabelWhite = kLabelYellow.copyWith(
  color: Colors.white,
);

TextStyle kMediumWhiteFont = const TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w300,
  fontSize: 30,
  color: Colors.white,
);

TextStyle kInfographicFont = const TextStyle(
  fontFamily: 'Outfit',
  fontWeight: FontWeight.w300,
  fontSize: 130,
  color: Color(0xFF5c5c5c),
  letterSpacing: -10,
  height: 1,
);
