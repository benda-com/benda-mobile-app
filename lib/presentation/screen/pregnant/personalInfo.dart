import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/wright_parameters/wright_parameters_cubit.dart';
import 'package:benda/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PregnantInfo extends StatefulWidget {
  const PregnantInfo({super.key});

  @override
  State<PregnantInfo> createState() => _PregnantInfoState();
}

class _PregnantInfoState extends State<PregnantInfo> {
  bool _isVisibleParams = false;
  bool _isVisibleInfo = true;
  bool _isVisibleAnte = false;

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
    final authCubit = BlocProvider.of<AuthCubit>(context);
    final wrightCubit = BlocProvider.of<WrightParametersCubit>(context);

    String? firstName;
    String? lastName;
    String? phoneNumber;
    String? email;
    String? dateOfBirth;
    int? week;

    WrightParametersCompleted wrightParameter =
        wrightCubit.state as WrightParametersCompleted;
    double? tall = wrightParameter.wrightParametersResponse?.height;
    double? weight = wrightParameter.wrightParametersResponse?.weight;
    String? origin = wrightParameter.wrightParametersResponse?.origin;
    double? sle = wrightParameter.wrightParametersResponse?.sle;
    double? diabetes = wrightParameter.wrightParametersResponse?.diabetes;
    double? chronicHypertension =
        wrightParameter.wrightParametersResponse?.chronicHypertension;
    double? familyHistoryPe =
        wrightParameter.wrightParametersResponse?.familyHistoryPe;
    double? inVitroConception =
        wrightParameter.wrightParametersResponse?.inVitroConception;
    double? parousNoPe = wrightParameter.wrightParametersResponse?.parousNoPe;
    var parousNoPeDifference =
        wrightParameter.wrightParametersResponse?.parousNoPeDifference;
    var parousNoPeInterval =
        wrightParameter.wrightParametersResponse?.parousNoPeInterval;
    var parousPeDifference =
        wrightParameter.wrightParametersResponse?.parousPeDifference;
    double? parousPe = wrightParameter.wrightParametersResponse?.parousPe;

    if (authCubit.state is LoginCompleted) {
      LoginCompleted user = authCubit.state as LoginCompleted;
      firstName = user.loginResponse?.firstName;
      lastName = user.loginResponse?.lastName;
      phoneNumber = user.loginResponse?.phoneNumber;
      email = user.loginResponse?.email;
      week = user.loginResponse?.pregnantWomanPrenancyWeek;
      var datetime = user.loginResponse?.dateOfBirth;
      dateOfBirth = "${datetime?.day}-${datetime?.month}-${datetime?.year}";
    }
    if (authCubit is RegisterCompleted) {
      RegisterCompleted user = authCubit.state as RegisterCompleted;
      firstName = user.registerResponse?.firstName;
      lastName = user.registerResponse?.lastName;
      phoneNumber = user.registerResponse?.phoneNumber;
      email = user.registerResponse?.email;
      var datetime = user.registerResponse?.dateOfBirth;
      week = user.registerResponse?.pregnantWomanPrenancyWeek;
      dateOfBirth = "${datetime?.day}-${datetime?.month}-${datetime?.year}";
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 25, right: 25),
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
                                    'Nom: ${firstName} ',
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
                                    'Prenom: ${lastName}',
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
                                    textValue: '${phoneNumber}'),
                                SizedBox(
                                  height: 30 * fem,
                                ),
                                InfoItemWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textName: 'Email',
                                    textValue: '${email}'),
                                SizedBox(
                                  height: 30 * fem,
                                ),
                                InfoItemWidget(
                                    fem: fem,
                                    ffem: ffem,
                                    textName: 'Date de naissance',
                                    textValue: '${dateOfBirth}'),
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
                              textValue: '${week ?? ""}'),
                          SizedBox(
                            height: 17 * fem,
                          ),
                          InfoItemWidget(
                              fem: fem,
                              ffem: ffem,
                              textName: 'Taille',
                              textValue: '${tall}m'),
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
                              textName: 'Origine',
                              textValue: '${origin}'),
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
                    child: Container(
                      width: double.infinity,
                      height: 50 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff0072c5)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Editer profil',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 2 * ffem / fem,
                            color: Color(0xff0072c5),
                          ),
                        ),
                      ),
                    ),
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
