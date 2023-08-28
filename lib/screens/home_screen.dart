import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/constants.dart';
import 'package:flutter_stopwatch_app/screens/welcome_screen.dart';
import 'package:flutter_stopwatch_app/screens/welcome_screen2.dart';
import 'package:flutter_stopwatch_app/screens/welcome_screen3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedPage = 0;
  final _controller = PageController(
    initialPage: 0,
  );

  List<Widget> _pageIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < 3; i++) {
      Color color = i == selectedPage ? kYellow : kSecondaryColor;
      indicators.add(Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(100.0),
        ),
      ));
      if (i < 2) {
        indicators.add(
          const SizedBox(width: 5),
        );
      }
    }
    return indicators;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 0,
            horizontal: 20.0,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/layered-waves-haikei.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (int page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                  controller: _controller,
                  children: const [
                    WelcomeScreen(),
                    WelcomeScreen2(),
                    WelcomeScreen3(),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _pageIndicator(),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {},
                style: kYellowButton,
                child: Text(
                  "Sign into your Account",
                  style: kButtonText,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              OutlinedButton(
                onPressed: () {},
                style: kOutlineButton,
                child: Text(
                  "Sign up for Free",
                  style: kButtonText.copyWith(
                    color: kYellow,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
