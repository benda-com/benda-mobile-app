import 'dart:async';
import 'package:benda/data/repositories/risk_repository.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/risk/risk_bloc.dart';
import 'package:benda/logic/wright_parameters/wright_parameters_cubit.dart';
import 'package:benda/presentation/screen/pregnant/notification.dart';
import 'package:benda/presentation/widgets/notification_card.dart';
import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:benda/utils.dart';
import 'package:timezone/standalone.dart' as tz;

final detroit = tz.getLocation('Africa/Lagos');

class HomePregnant extends StatefulWidget {
  const HomePregnant({super.key});

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
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(milliseconds: 500), (timer) => _update());
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  void _update() {
    setState(() {
      formattedTime = DateFormat('dd-MM-yyyy kk:mm')
          .format(tz.TZDateTime.from(DateTime.now(), detroit));
      hour =
          DateFormat('a').format(tz.TZDateTime.from(DateTime.now(), detroit));
    });
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
    final wrightBloc = BlocProvider.of<WrightParametersCubit>(context);

    WrightParametersCompleted wrightParam =
        wrightBloc.state as WrightParametersCompleted;
    int? id = wrightParam.wrightParametersResponse?.id;

    var authState;
    String? firstName;
    String? lastName;

    if (authCubit.state is LoginCompleted) {
      authState = authCubit.state as LoginCompleted;
      firstName = authState?.loginResponse?.firstName;
      lastName = authState?.loginResponse?.lastName;
    }
    if (authCubit.state is RegisterCompleted) {
      authState = authCubit.state as RegisterCompleted;
      firstName = authState?.registerResponse?.firstName;
      lastName = authState?.registerResponse?.lastName;
    }

    return BlocProvider(
      create: (context) =>
          RiskBloc(riskRepo: RiskRepository())..add(RiskLoadEvent(id)),
      child: SingleChildScrollView(
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
                      "${authState.loginResponse?.pregnantWomanPrenancyWeek ?? ""}",
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
                            "Connecter",
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                            ),
                          ),
                        ),
                        Container(
                          // ellipse2Q1D (149:194)
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
                    paramTime: "12h00",
                    paramUnit: "mg",
                    status: "Normal",
                    paramValue: 12,
                  ),
                  ParameterCardWidget(
                    fem: fem,
                    ffem: ffem,
                    paramName: "Temperature",
                    paramTime: "12h00",
                    paramUnit: "°C",
                    status: "Normal",
                    paramValue: 37,
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
                    paramName: "Freg. Card",
                    paramTime: "12h00",
                    paramUnit: "bpm",
                    status: "Normal",
                    paramValue: 120,
                  ),
                  ParameterCardWidget(
                    fem: fem,
                    ffem: ffem,
                    paramName: "TA",
                    paramTime: "12h00",
                    paramUnit: "mmHg",
                    status: "Normal",
                    paramValue: 120,
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
                    paramTime: "12h00",
                    paramUnit: "%",
                    status: "Normal",
                    paramValue: 100,
                  ),
                  Container(
                    width: 190,
                    height: 80,
                    child: Center(
                      child: Text(
                        "Aucun danger",
                        style: safeGoogleFont('Inter',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Colors.green),
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
                          'Suggestion',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 20.6326522827 * ffem,
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
                BlocConsumer<RiskBloc, RiskState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    if (state is RiskCompleted)
                      return Container(
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
                                Container(
                                  // pathologiesc3 (299:627)

                                  child: Text(
                                    'Estimation de delivrance',
                                    textAlign: TextAlign.center,
                                    style: safeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff5c5a5a),
                                    ),
                                  ),
                                ),
                                Container(
                                  // prclampsieQkP (299:633)

                                  child: Text(
                                    '${state.riskResponse?.risk}',
                                    style: safeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff5c5a5a),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                  state.riskResponse?.conclusion ?? "",
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
                      );
                    return Container();
                  },
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
                        hospitalName: "Evitez de dormir sans caleçon"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
