import 'package:benda/logic/wright_parameter/wright_parameters_bloc.dart';
import 'package:benda/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PregnantMoreInfo extends StatefulWidget {
  const PregnantMoreInfo(
      {super.key,
      required this.phoneNumber,
      required this.dateOfBirth,
      required this.email,
      required this.name,
      required this.pregnantWomanPrenancyWeek});

  final String name;
  final String phoneNumber;
  final String email;
  final int pregnantWomanPrenancyWeek;
  final DateTime dateOfBirth;
  @override
  State<PregnantMoreInfo> createState() => _PregnantMoreInfoState(
      dateOfBirth: dateOfBirth,
      email: email,
      name: name,
      phoneNumber: phoneNumber,
      pregnantWomanPrenancyWeek: pregnantWomanPrenancyWeek);
}

class _PregnantMoreInfoState extends State<PregnantMoreInfo> {
  bool _isVisibleParams = false;
  bool _isVisibleInfo = true;
  bool _isVisibleAnte = false;

  final String name;
  final String phoneNumber;
  final String email;
  final int pregnantWomanPrenancyWeek;
  final DateTime dateOfBirth;

  _PregnantMoreInfoState({
    required this.name,
    required this.phoneNumber,
    required this.dateOfBirth,
    required this.email,
    required this.pregnantWomanPrenancyWeek,
  });

  void showInfo() {
    setState(() {
      _isVisibleInfo = !_isVisibleInfo;
    });
  }

  void showParams() {
    setState(() {
      _isVisibleParams = !_isVisibleParams;
    });
  }

  void showAnte() {
    setState(() {
      _isVisibleAnte = !_isVisibleAnte;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final wrightBloc = BlocProvider.of<WrightParametersBloc>(context).state;

    var age;
    var chronicHypertension;
    var diabetes;
    var familyHistoryPe;
    var height;
    var inVitroConception;
    var origin;
    var parousNoPe;
    var parousNoPeDifference;
    var parousNoPeInterval;
    var sle;
    var weight;
    var parousPe;
    var parousPeDifference;

    if (wrightBloc is WrightParametersCompleted) {
      age = wrightBloc.wrightParametersResponse?.age;
      chronicHypertension =
          wrightBloc.wrightParametersResponse?.chronicHypertension;
      diabetes = wrightBloc.wrightParametersResponse?.diabetes;
      familyHistoryPe = wrightBloc.wrightParametersResponse?.familyHistoryPe;
      height = wrightBloc.wrightParametersResponse?.height;
      inVitroConception =
          wrightBloc.wrightParametersResponse?.inVitroConception;
      origin = wrightBloc.wrightParametersResponse?.origin;
      parousNoPe = wrightBloc.wrightParametersResponse?.parousNoPe;
      parousNoPeDifference =
          wrightBloc.wrightParametersResponse?.parousNoPeDifference;
      parousNoPeInterval =
          wrightBloc.wrightParametersResponse?.parousNoPeInterval;
      sle = wrightBloc.wrightParametersResponse?.sle;
      weight = wrightBloc.wrightParametersResponse?.weight;
      parousPe = wrightBloc.wrightParametersResponse?.parousPe;
      parousPeDifference =
          wrightBloc.wrightParametersResponse?.parousPeDifference;
    }
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: showInfo,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: 1)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Info personnel',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8 * ffem / fem,
                                    color: Color(0xff5c5a5a),
                                  ),
                                ),
                              ),
                              if (_isVisibleInfo)
                                Container(
                                  // frameRxs (254:532)

                                  width: 15 * fem,
                                  height: 7.5 * fem,
                                  child: Image.asset(
                                    'images/frame-jGb.png',
                                    width: 15 * fem,
                                    height: 7.5 * fem,
                                  ),
                                ),
                              if (!_isVisibleInfo)
                                Container(
                                  // frameRxs (254:532)

                                  width: 15 * fem,
                                  height: 7.5 * fem,
                                  child: Image.asset(
                                    'images/frame-BU3.png',
                                    width: 15 * fem,
                                    height: 7.5 * fem,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      if (_isVisibleInfo)
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 10 * fem, 0 * fem, 10 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffd9d9d9),
                                          width: 0.5)),
                                ),
                                child: Text(
                                  'Nom et prenom: $name ',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3333333333 * ffem / fem,
                                    color: Color(0xff5c5a5a),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Téléphone',
                                  textValue: '$phoneNumber'),
                              SizedBox(
                                height: 30 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Email',
                                  textValue: '$email'),
                              SizedBox(
                                height: 30 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Age',
                                  textValue: '${age} ans'),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: showParams,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 1)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            'Parametres',
                            style: safeGoogleFont(
                              'Roboto',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.8 * ffem / fem,
                              color: Color(0xff5c5a5a),
                            ),
                          ),
                        ),
                        if (_isVisibleParams)
                          Container(
                            // frameRxs (254:532)

                            width: 15 * fem,
                            height: 7.5 * fem,
                            child: Image.asset(
                              'images/frame-jGb.png',
                              width: 15 * fem,
                              height: 7.5 * fem,
                            ),
                          ),
                        if (!_isVisibleParams)
                          Container(
                            // frameRxs (254:532)

                            width: 15 * fem,
                            height: 7.5 * fem,
                            child: Image.asset(
                              'images/frame-BU3.png',
                              width: 15 * fem,
                              height: 7.5 * fem,
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                if (_isVisibleParams)
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Semaine de grossesse',
                            textValue: '$pregnantWomanPrenancyWeek'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Taille',
                            textValue: '${height}m'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Poids',
                            textValue: '${weight}kg'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Votre origine',
                            textValue:
                                '${origin == 'black' ? 'Africain' : 'Sud-asiatique'}'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Protéinerie',
                            textValue: '30mmHG'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Tension artérielle',
                            textValue: '30mmHG'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Saturation en oxygène',
                            textValue: '30mmHG'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Température',
                            textValue: '30 C'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Container(
            // autogroupw1axEyV (TjxmGeBx1mDbYVeo78w1AX)
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  // frame117AcF (254:555)

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: showAnte,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: 1)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  'Antecedent',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.8 * ffem / fem,
                                    color: Color(0xff5c5a5a),
                                  ),
                                ),
                              ),
                              if (_isVisibleAnte)
                                Container(
                                  // frameRxs (254:532)

                                  width: 15 * fem,
                                  height: 7.5 * fem,
                                  child: Image.asset(
                                    'images/frame-jGb.png',
                                    width: 15 * fem,
                                    height: 7.5 * fem,
                                  ),
                                ),
                              if (!_isVisibleAnte)
                                Container(
                                  // frameRxs (254:532)

                                  width: 15 * fem,
                                  height: 7.5 * fem,
                                  child: Image.asset(
                                    'images/frame-BU3.png',
                                    width: 15 * fem,
                                    height: 7.5 * fem,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17 * fem,
                      ),
                      if (_isVisibleAnte)
                        Container(
                          // frame11633m (254:543)
                          margin: EdgeInsets.fromLTRB(
                              5 * fem, 0 * fem, 5 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Conception in vitro',
                                  textValue:
                                      '${inVitroConception == 1.0 ? "Oui" : "Non"}'),
                              SizedBox(
                                height: 17 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Syndrome antiphospholipide',
                                  textValue: '${sle == 1.0 ? "Oui" : "Non"}'),
                              SizedBox(
                                height: 17 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Hypertension chronique',
                                  textValue:
                                      '${chronicHypertension == 1.0 ? "Oui" : "Non"}'),
                              if (chronicHypertension == 1.0)
                                InfoItemWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textName:
                                        'antécédents de prééclampsie chez la mère',
                                    textValue: '$familyHistoryPe'),
                              SizedBox(
                                height: 17 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Diabète sucré',
                                  textValue:
                                      '${diabetes == 1.0 ? "Oui" : "Non"}'),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName:
                                      'Accouchement avec survenance de prééclampsie',
                                  textValue:
                                      '${parousPe == 1.0 ? "Oui" : "Non"}'),
                              if (parousPe == 1.0)
                                InfoItemWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textName:
                                        "âge gestationnel à l'accouchement",
                                    textValue: '$parousPeDifference'),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName:
                                      "Accouchement sans survenance de prééclampsie",
                                  textValue:
                                      '${parousNoPe == 1.0 ? "Oui" : "Non"}'),
                              if (parousNoPe == 1.0)
                                InfoItemWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textName:
                                        "Age gestationnel à l'accouchement",
                                    textValue: '${parousNoPeDifference}'),
                              if (parousNoPe == 1.0)
                                InfoItemWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textName:
                                        "Durée entre les deux accouchements",
                                    textValue: '${parousNoPeInterval}'),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17 * fem,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 45 * fem,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Color(0xfff80e2a),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Ne plus suivre la patiente',
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2 * ffem / fem,
                                color: Color(0xffffffff),
                              ),
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
        ],
      ),
    );
  }
}
