import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/components/top_bar.dart';
import 'package:flutter_stopwatch_app/constants.dart';
import 'dart:async';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final stopwatch = Stopwatch();
  bool isRunning = false;
  late Timer timer;
  String hours = "00";
  String minutes = "00";
  String seconds = "00";

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      int hoursDuration = stopwatch.elapsed.inHours;
      int minutesDuration = stopwatch.elapsed.inMinutes;
      int secondsDuration = stopwatch.elapsed.inSeconds;
      setState(() {
        if (hoursDuration < 10) {
          minutes = "0${hoursDuration.toString()}";
        } else {
          minutes = hoursDuration.toString();
        }
        if (minutesDuration < 10) {
          minutes = "0${minutesDuration.toString()}";
        } else if (minutesDuration > 59) {
          int modMinutes = minutesDuration % 60;
          if (modMinutes < 10) {
            minutes = "0${modMinutes.toString()}";
          } else {
            minutes = modMinutes.toString();
          }
        } else {
          minutes = minutesDuration.toString();
        }
        if (secondsDuration < 10) {
          seconds = "0${secondsDuration.toString()}";
        } else if (secondsDuration > 59) {
          int modSeconds = secondsDuration % 60;
          if (modSeconds < 10) {
            seconds = "0${modSeconds.toString()}";
          } else {
            seconds = modSeconds.toString();
          }
        } else {
          seconds = secondsDuration.toString();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/layered-waves-haikei2.png'),
                  fit: BoxFit.cover),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              children: [
                const TopBar(title: '10k Marathon'),
                const SizedBox(height: 50),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 115,
                            child: Text(
                              hours,
                              style: kInfographicFont.copyWith(height: 1),
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Text(
                              minutes,
                              style: kInfographicFont.copyWith(
                                  color: kYellowColor),
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Text(
                              seconds,
                              style: kInfographicFont.copyWith(
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 115,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "h",
                                style: kLabelYellow.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "m",
                                style: kLabelYellow.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "s",
                                style: kLabelYellow.copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: kBackButtonColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Distance",
                        style: kLabelLightGray,
                      ),
                      Text(
                        "7.28km",
                        style: kLabelYellow.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "2.72km",
                        style: kLabelWhite,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: kOutlineButton.copyWith(
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                              vertical: 60,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 50,
                          color: kYellowColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          if (stopwatch.isRunning) {
                            stopwatch.stop();
                            setState(() {
                              isRunning = false;
                              timer.cancel();
                            });
                          } else {
                            stopwatch.start();
                            setState(() {
                              isRunning = true;
                              startTimer();
                            });
                          }
                        },
                        style: kYellowButton.copyWith(
                          padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(
                              vertical: 60,
                            ),
                          ),
                        ),
                        child: Icon(
                          isRunning ? Icons.pause : Icons.play_arrow,
                          size: 50,
                          color: kPrimaryBackgroundColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
        floatingActionButton: Visibility(
          visible: !isRunning && stopwatch.elapsed.inSeconds > 0,
          child: Align(
            alignment: const Alignment(-.8, .35),
            child: FloatingActionButton(
              onPressed: () {
                stopwatch.reset();
                timer.cancel();
                setState(() {
                  hours = "00";
                  minutes = "00";
                  seconds = "00";
                });
              },
              backgroundColor: kYellowColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  100,
                ),
              ),
              child: const Icon(
                Icons.replay,
                color: kPrimaryBackgroundColor,
                size: 40,
              ),
            ),
          ),
        ));
  }
}
