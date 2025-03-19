import 'dart:async';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/risk/risk_bloc.dart';
import 'package:benda/presentation/screen/pregnant/brandlet_brand.dart';
import 'package:benda/presentation/screen/pregnant/notification.dart';
import 'package:benda/presentation/widgets/notification_card.dart';
import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:benda/utils.dart';
import 'package:timezone/standalone.dart' as tz;
import 'dart:math';

final detroit = tz.getLocation('Africa/Lagos');

class HomePregnant extends StatefulWidget {
  const HomePregnant({super.key, this.proteine = "250"});

  final String proteine;
  @override
  State<HomePregnant> createState() => _HomePregnantState();
}

class _HomePregnantState extends State<HomePregnant> {
  final localizedDt = tz.TZDateTime.from(DateTime.now(), detroit);
  String formattedTime = DateFormat('dd-MM-yyyy kk:mm')
      .format(tz.TZDateTime.from(DateTime.now(), detroit));
  String hour =
      DateFormat('a').format(tz.TZDateTime.from(DateTime.now(), detroit));

  late Timer _timer;
  late Timer timerParams;
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

  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
    timerParams = Timer.periodic(const Duration(seconds: 3), updateDataSource);
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
    timerParams.cancel();
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

  void updateDataSource(Timer timer) {
    Random random = new Random();
    setState(() {
      satuOxy = random.nextDouble() * 10 + 90;
      temp = random.nextDouble() * 0.5 + 37;
      freqCard = random.nextDouble() * 20 + 70;
      taDiastolique = random.nextDouble() * 40 + 70;
      taSystolique = random.nextDouble() * 40 + 120;
      proteine = double.parse(widget.proteine);
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
    final authCubit = BlocProvider.of<AuthCubit>(context);
    final riskBloc = BlocProvider.of<RiskBloc>(context).state;

    String? conclusion = "";

    if (riskBloc is RiskCompleted) {
      conclusion = riskBloc.riskResponse?.conclusion;
    }

    var authState;
    String? firstName;
    String? lastName;
    var pregnantWomanPrenancyWeek;

    if (authCubit.state is LoginCompleted) {
      authState = authCubit.state as LoginCompleted;
      firstName = authState?.loginResponse?.firstName;
      lastName = authState?.loginResponse?.lastName;
      pregnantWomanPrenancyWeek =
          authState?.loginResponse?.pregnantWomanPrenancyWeek;
    }
    if (authCubit.state is RegisterCompleted) {
      authState = authCubit.state as RegisterCompleted;
      firstName = authState?.registerResponse?.firstName;
      lastName = authState?.registerResponse?.lastName;
      pregnantWomanPrenancyWeek =
          authState?.loginResponse?.pregnantWomanPrenancyWeek;
    }

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${firstName} ${lastName}",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                    ),
                  ),
                  Text(
                    formattedTime,
                    style: safeGoogleFont('Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125 * ffem / fem,
                        color: const Color.fromARGB(221, 104, 104, 104)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Semaine de grossesse",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                    ),
                  ),
                  Text(
                    "${pregnantWomanPrenancyWeek ?? ""}",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: const Color.fromARGB(221, 104, 104, 104),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Etat du dispositif"),
                  Row(
                    children: [
                      Container(
                        // normal4i3 (149:193)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 5 * fem, 0 * fem),
                        child: Text(
                          "Connecté",
                          style: safeGoogleFont(
                            'Inter',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                          ),
                        ),
                      ),
                      Container(
                        width: 15 * fem,
                        height: 15 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                          color: Colors.green,
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
                  paramName: "Satu. oxyg",
                  paramTime: "${formatHour(formattedTime)}",
                  paramUnit: "%",
                  status: normalSatOxy == true ? "Normal" : "Anormal",
                  paramValue: satuOxy,
                ),
                Container(
                  width: 190,
                  height: 80,
                  child: Center(
                    child: Text(
                      normalParams == true ? "Aucun danger" : "Danger",
                      style: safeGoogleFont('Inter',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color:
                              normalParams == true ? Colors.green : Colors.red),
                    ),
                  ),
                ),
              ],
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
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.333333395 * ffem / fem,
                          color: Color(0xff5c5a5a),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3.25 * fem, 0 * fem, 3.25 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (_isVisible)
                            Container(
                                width: 17.19 * fem,
                                height: 17.19 * fem,
                                child: Icon(Icons.arrow_drop_up)),
                          if (!_isVisible)
                            Container(
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
            SizedBox(
              height: 20,
            ),
            if (_isVisible)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                height: 100,
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
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
                          "$conclusion",
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
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return BrandletBrand();
                  }),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 60 * fem,
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
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 189.52 * fem, 0 * fem),
                      child: Text(
                        'Test de proteinerie',
                        style: safeGoogleFont(
                          'Roboto',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.333333395 * ffem / fem,
                          color: Color(0xff5c5a5a),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 3.25 * fem, 0 * fem, 3.25 * fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 30 * fem,
                            height: 30 * fem,
                            child: Image.asset(
                              width: 120,
                              'images/protein.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const NotificationPregnant();
                            },
                          ),
                        );
                      },
                      child: Text("Voir plus")),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  NotificationCard(
                      fem: fem,
                      ffem: ffem,
                      name: 'Benda',
                      genycoimage: "fichier-1-1.png",
                      hospitalName:
                          "L'equipe benda vous souhaite la bienvenue"),
                  NotificationCard(
                      fem: fem,
                      ffem: ffem,
                      name: 'Feedback demande',
                      genycoimage: "fichier-1-1.png",
                      hospitalName: "Votre demande a ete bien approuve"),
                  NotificationCard(
                      fem: fem,
                      ffem: ffem,
                      name: 'Conseille santé',
                      genycoimage: "ellipse-15-bg.png",
                      hospitalName: "Evitez de fumer ou de boire de l'alcool"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
