import 'package:benda/logic/risk/risk_bloc.dart';
import 'package:benda/presentation/widgets/graph_proteinerie.dart';
import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:benda/presentation/widgets/filter_parameter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "dart:async";
import 'dart:math';
import 'package:timezone/standalone.dart' as tz;
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

final detroit = tz.getLocation('Africa/Lagos');

class PregnantParams extends StatefulWidget {
  const PregnantParams(
      {super.key,
      required this.name,
      required this.age,
      required this.pregnantWomanPrenancyWeek});

  final String name;
  final int age;
  final int? pregnantWomanPrenancyWeek;

  @override
  State<PregnantParams> createState() => _PregnantParamsState(
      age: age,
      name: name,
      pregnantWomanPrenancyWeek: pregnantWomanPrenancyWeek);
}

class _PregnantParamsState extends State<PregnantParams> {
  bool _isVisible = false;
  int selectedIndex = 0;

  final String name;
  final int age;
  final int? pregnantWomanPrenancyWeek;

  late Timer timerParams;
  final localizedDt = tz.TZDateTime.from(DateTime.now(), detroit);
  String formattedTime = DateFormat('dd-MM-yyyy kk:mm:ss')
      .format(tz.TZDateTime.from(DateTime.now(), detroit));
  String hour =
      DateFormat('a').format(tz.TZDateTime.from(DateTime.now(), detroit));

  Timer? timer;
  double? satuOxy = 90;
  double? proteine = 250;
  double? taDiastolique = 80;
  double? taSystolique = 110;
  double? freqCard = 80;
  double? temp = 37.2;

  bool normalTemp = true;
  bool normalSatOxy = true;
  bool normalTa = true;
  bool normalFreqCard = true;
  bool normalProteine = true;
  bool normalParams = true;

  List<String> labels = ["Freq.Card", "Proteine", "TA", "Temp"];
  List<String> compLabels = [
    "Frequence Cardiaque",
    "Protéinurie",
    "Tension Arterielle",
    "Temperature",
  ];

  _PregnantParamsState({
    required this.name,
    required this.age,
    required this.pregnantWomanPrenancyWeek,
  });

  @override
  void initState() {
    timerParams = Timer.periodic(const Duration(seconds: 3), updateDataSource);
    super.initState();
    timer =
        Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
  }

  void _update() {
    setState(() {
      formattedTime = DateFormat('dd-MM-yyyy kk:mm:ss')
          .format(tz.TZDateTime.from(DateTime.now(), detroit));
      hour =
          DateFormat('a').format(tz.TZDateTime.from(DateTime.now(), detroit));
    });
  }

  String formatHour(String dateTime) {
    return "${dateTime.split(" ")[1]}";
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
    timerParams.cancel();
  }

  void updateDataSource(Timer timer) {
    Random random = new Random();
    setState(() {
      satuOxy = random.nextDouble() * 10 + 90;
      temp = random.nextDouble() * 0.5 + 37;
      freqCard = random.nextDouble() * 20 + 70;
      taDiastolique = random.nextDouble() * 40 + 70;
      taSystolique = random.nextDouble() * 40 + 120;
      proteine = 300;
    });
    if (temp! < 37 || temp! > 37.5) {
      setState(() {
        normalTemp = false;
      });
    }
    if (satuOxy! < 90) {
      setState(() {
        normalSatOxy = false;
      });
    }
    if (freqCard! < 70 || freqCard! > 120) {
      setState(() {
        normalFreqCard = false;
      });
    }
    if (taDiastolique! >= 90 || taSystolique! >= 140) {
      setState(() {
        normalTa = false;
      });
    }
    if (proteine! >= 300) {
      setState(() {
        normalProteine = false;
      });
    }

    normalParams = normalFreqCard &&
        normalProteine &&
        normalSatOxy &&
        normalTa &&
        normalTemp;
  }

  void showPrediction() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final riskBloc = BlocProvider.of<RiskBloc>(context).state;

    var conclusion;

    if (riskBloc is RiskCompleted) {
      conclusion = riskBloc.riskResponse?.conclusion;
    }

    return Container(
      width: double.infinity,
      child: Container(
        // iphone13promax7nmm (163:76)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff8f9f9),
        ),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      height: 90 * fem,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame59Fx3 (186:510)

                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  // vivianefokounSB (163:287)
                                  name,
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.5 * ffem / fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                Text(
                                  // ansvYP (186:509)
                                  '$age ans',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.4285714286 * ffem / fem,
                                    color: Color(0xff5c5a5a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (pregnantWomanPrenancyWeek != "null")
                            Text(
                              // semainesGcF (186:505)
                              '$pregnantWomanPrenancyWeek semaines',
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff5c5a5a),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    height: 32 * fem,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                          labels.length,
                          (index) => InkWell(
                                onTap: () => setState(() {
                                  selectedIndex = index;
                                }),
                                child: FilterParameterWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textButton: labels[index],
                                    isSelected: selectedIndex == index),
                              )),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: GraphProteinerieWidget(
                    graphName: compLabels[selectedIndex],
                    selectedIndex: selectedIndex,
                    formattedDatetime: formattedTime,
                    freqCard: freqCard,
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ParameterCardWidget(
                        fem: fem,
                        ffem: ffem,
                        paramName: "Protéinurie",
                        paramTime: "${formatHour(formattedTime)}",
                        paramUnit: "mg",
                        status: normalProteine == true ? "Normal" : "Anormal",
                        paramValue: proteine,
                      ),
                      ParameterCardWidget(
                        fem: fem,
                        ffem: ffem,
                        paramName: "Temperature",
                        paramTime: "${formatHour(formattedTime)}",
                        paramUnit: "°C",
                        status: normalTemp == true ? "Normal" : "Anormal",
                        paramValue: temp,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ParameterCardWidget(
                        fem: fem,
                        ffem: ffem,
                        paramName: "Freq. Card",
                        paramTime: "${formatHour(formattedTime)}",
                        paramUnit: "bpm",
                        status: normalFreqCard == true ? "Normal" : "Anormal",
                        paramValue: freqCard,
                      ),
                      ParameterCardWidget(
                        fem: fem,
                        ffem: ffem,
                        paramName: "TA",
                        paramTime: "${formatHour(formattedTime)}",
                        paramUnit: "mmHg",
                        status: normalTa == true ? "Normal" : "Anormal",
                        paramValue: taSystolique,
                        paramValue2: taDiastolique,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ParameterCardWidget(
                        fem: fem,
                        ffem: ffem,
                        paramName: "Satu. Oxy.",
                        paramTime: "${formatHour(formattedTime)}",
                        paramUnit: "%",
                        status: normalSatOxy == true ? "Normal" : "Anormal",
                        paramValue: satuOxy?.toDouble(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: Container(
                      height: 50 * fem,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Color(0xff08d635),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // appelermadamefokouokj (163:263)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 70 * fem, 0 * fem),
                            child: Text(
                              'Appeler madame $name',
                              textAlign: TextAlign.center,
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.4285714286 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // phoneoutlineW9M (163:265)
                            width: 18 * fem,
                            height: 18 * fem,
                            child: Image.asset(
                              'images/phoneoutline.png',
                              width: 18 * fem,
                              height: 18 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: showPrediction,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(6.8775510788 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x14000000),
                            offset: Offset(0 * fem, 4 * fem),
                            blurRadius: 17 * fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // suggestionJL7 (163:259)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 189.52 * fem, 0 * fem),
                            child: Text(
                              'Risque de Prééclampsie',
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.333333395 * ffem / fem,
                                color: Color(0xff5c5a5a),
                              ),
                            ),
                          ),
                          Container(
                            // frame46o1y (163:273)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 3.25 * fem, 0 * fem, 3.25 * fem),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (_isVisible)
                                  Container(
                                      // arrowdownsigntonavigateCK1 (163:267)
                                      width: 17.19 * fem,
                                      height: 17.19 * fem,
                                      child: Icon(Icons.arrow_drop_up)),
                                if (!_isVisible)
                                  Container(
                                      // arrowdownsigntonavigateCK1 (163:267)
                                      width: 17.19 * fem,
                                      height: 17.19 * fem,
                                      child: Icon(Icons.arrow_drop_down)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_isVisible)
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      height: 100,
                      decoration: BoxDecoration(color: Colors.white),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                // probabilitC8X (299:628)
                                'Conclusion',
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff5c5a5a),
                                ),
                              ),
                              Text(
                                // vTq (299:634)
                                '$conclusion',
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w300,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff5c5a5a),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
