import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';
import 'package:flutter_stopwatch_app/screens/time_screen.dart';
import 'package:flutter_stopwatch_app/screens/welcome_screen.dart';
import 'package:flutter_stopwatch_app/screens/welcome_screen_2.dart';
import 'package:flutter_stopwatch_app/screens/welcome_screen_3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  final controller = PageController(
    initialPage: 0,
  );

  List<Widget> _pageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < 3; i++) {
      Color color = i == selectedPage ? kYellowColor : const Color(0xFF686868);
      list.add(
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      );
      if (i < 2) {
        list.add(
          const SizedBox(width: 5),
        );
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryBackgroundColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/layered-waves-haikei.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20.0),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: controller,
                  onPageChanged: (int page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                  children: const [
                    WelcomeScreen(),
                    WelcomeScreen2(),
                    WelcomeScreen3(),
                  ],
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _pageIndicator(),
              ),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 3,
                ),
                child: ElevatedButton(
                  style: kYellowButton,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TimeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign into your Account",
                    style: kButtonFont,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 3,
                ),
                child: OutlinedButton(
                  style: kOutlineButton,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TimeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Sign up for Free",
                    style: kButtonFont.copyWith(color: kYellowColor),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
