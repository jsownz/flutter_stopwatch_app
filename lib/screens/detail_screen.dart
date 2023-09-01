import 'package:flutter/material.dart';
import 'package:flutter_stopwatch_app/components/ellipsis_button.dart';
import 'package:flutter_stopwatch_app/components/top_bar.dart';
import 'package:flutter_stopwatch_app/constants.dart';
import 'package:flutter_stopwatch_app/screens/add_screen.dart';

class DetailScreen extends StatelessWidget {
  final Map run;
  const DetailScreen({super.key, required this.run});

  @override
  Widget build(BuildContext context) {
    // https://stackoverflow.com/questions/61401756/how-to-extract-number-only-from-string-in-flutter
    String hours = run['time'].split(' ')[0].replaceAll(RegExp(r'[^0-9]'), '');
    String minutes =
        run['time'].split(' ')[1].replaceAll(RegExp(r'[^0-9]'), '');
    String seconds =
        run['time'].split(' ')[2].replaceAll(RegExp(r'[^0-9]'), '');
    if (hours.length < 2) {
      hours = "0$hours";
    }

    String distance = run['distance'];
    double distanceNum =
        double.parse(distance.replaceAll(RegExp(r'[^0-9]'), ''));
    String distanceString =
        distanceNum.toString().substring(0, distanceNum.toString().length - 2);
    double distanceStringFinal = double.parse(
        "${distanceString.substring(0, distanceString.length - 2)}.${distanceString.substring(distanceString.length - 2, distanceString.length)}");
    double decMin = double.parse(seconds) / 60;
    double min = int.parse(minutes) + decMin;
    double decHour = min / 60;
    double totalTime = (int.parse(hours)) + decHour;
    String averageSpeed =
        "${(distanceStringFinal / totalTime).toStringAsFixed(1)}km/h";

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
              const TopBar(title: 'Run Details'),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("My Time", style: kLabelGray),
                  Row(
                    children: [
                      EllipsisButton(icon: Icons.auto_graph),
                      const SizedBox(width: 5),
                      EllipsisButton(icon: Icons.more_horiz),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      flex: 2,
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          SizedBox(
                            height: 115,
                            child: Text(
                              hours,
                              textAlign: TextAlign.center,
                              style: kInfographicFont,
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Text(
                              minutes,
                              textAlign: TextAlign.center,
                              style: kInfographicFont.copyWith(
                                color: kYellowColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Text(
                              seconds,
                              textAlign: TextAlign.center,
                              style: kInfographicFont.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 115,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Distance",
                                  textAlign: TextAlign.left,
                                  style: kLabelYellow,
                                ),
                                Text(
                                  distance,
                                  textAlign: TextAlign.left,
                                  style: kMediumWhiteFont,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Avg. Speed",
                                  textAlign: TextAlign.left,
                                  style: kLabelYellow,
                                ),
                                Text(
                                  averageSpeed,
                                  textAlign: TextAlign.left,
                                  style: kMediumWhiteFont,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 115,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "Max. Speed",
                                  textAlign: TextAlign.left,
                                  style: kLabelYellow,
                                ),
                                Text(
                                  "21km/h",
                                  textAlign: TextAlign.left,
                                  style: kMediumWhiteFont,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: kGray,
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "10km Marathon",
                    style: kLabelWhite,
                  ),
                  Text(
                    run['created'],
                    style: kLabelLightGray,
                  ),
                ],
              ),
              const Divider(
                color: kGray,
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: kOutlineButton,
                      child: Text(
                        "Share",
                        style: kButtonFont.copyWith(
                          color: kYellowColor,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AddScreen(),
                          ),
                        );
                      },
                      style: kYellowButton,
                      child: Text(
                        "Try Again",
                        style: kButtonFont,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
