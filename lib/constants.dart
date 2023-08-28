import 'package:flutter/material.dart';

const Color kMainBackgroundColor = Color(0xFF141413);
const Color kBackgroundSecondaryColor = Color(0xFF1A1A1A);
const Color kBackgroundTertiaryColor = Color(0xFF202020);
const Color kYellow = Color(0xFFFFF500);
const Color kSecondaryColor = Color(0xFF494949);

ButtonStyle kYellowButton = ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 20.0),
  backgroundColor: kYellow,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
);

ButtonStyle kOutlineButton = OutlinedButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 20.0),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20.0),
  ),
  side: const BorderSide(color: kYellow),
);

TextStyle kButtonText = const TextStyle(
  fontFamily: 'Outfit',
  color: kMainBackgroundColor,
  fontWeight: FontWeight.w500,
  fontSize: 15,
);

TextStyle kWelcomeFont = const TextStyle(
  fontFamily: 'Outfit',
  fontSize: 58,
  color: Colors.white,
  height: .9,
);
