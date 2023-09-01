import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';

class TopBar extends StatelessWidget {
  final String title;
  const TopBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          padding: const EdgeInsets.only(
            left: 10,
          ),
          decoration: BoxDecoration(
            color: kBackButtonColor,
            borderRadius: BorderRadius.circular(100.0),
          ),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.circular(100.0),
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(width: 3.0),
        Expanded(
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                color: const Color(0xFF282828),
              ),
            ),
            child: Center(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: kLabelYellow,
              ),
            ),
          ),
        ),
        const SizedBox(width: 3.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: const Image(
            image: AssetImage('images/avatar.jpg'),
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
