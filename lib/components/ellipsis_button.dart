import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class EllipsisButton extends StatelessWidget {
  final IconData icon;
  EllipsisButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: kOutlineButtonEllipsis,
      child: Icon(
        icon,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
