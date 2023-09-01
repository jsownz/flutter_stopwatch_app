import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/components/ellipsis_button.dart';
import 'package:flutter_stopwatch_app/components/top_bar.dart';
import 'package:flutter_stopwatch_app/constants.dart';
import 'package:flutter_stopwatch_app/screens/add_screen.dart';
import 'package:flutter_stopwatch_app/screens/detail_screen.dart';

class TimeScreen extends StatelessWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> times = [
      {'created': '5d ago', 'distance': '10.27km', 'time': '1h 21m 30s'},
      {'created': '12d ago', 'distance': '10.31km', 'time': '1h 24m 57s'},
      {'created': '15d ago', 'distance': '10.12km', 'time': '1h 36m 15s'},
      {'created': '15d ago', 'distance': '10.12km', 'time': '1h 36m 15s'},
    ];

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const TopBar(title: 'Times'),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Category", style: kLabelGray),
                  EllipsisButton(icon: Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "10km\nMarathon",
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 48,
                      color: Colors.white,
                      height: .9,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: kYellowColor,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AddScreen(),
                          ),
                        );
                      },
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Icon(
                        Icons.directions_run,
                        color: kPrimaryBackgroundColor,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(height: 80.0, color: kBackButtonColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Avg. Time", style: kLabelYellow),
                  Text("Avg. Distance", style: kLabelYellow),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1h 21m",
                    style: kMediumWhiteFont,
                  ),
                  Text(
                    "10.17km",
                    style: kMediumWhiteFont,
                  ),
                ],
              ),
              const Divider(height: 80.0, color: kBackButtonColor),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Results", style: kLabelGray),
                  EllipsisButton(icon: Icons.more_horiz),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 290,
                child: ListView.builder(
                  itemCount: times.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 25.0),
                      margin: index == (times.length - 1)
                          ? const EdgeInsets.only(bottom: 0.0)
                          : const EdgeInsets.only(bottom: 4.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF282828),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailScreen(run: times[index]),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              times[index]['created'],
                              style: kLabelLightGray,
                            ),
                            Text(
                              times[index]['distance'],
                              style: kLabelWhite,
                            ),
                            Text(
                              times[index]['time'],
                              style: kLabelYellow,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
