import 'package:benda/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class PregnantMoreInfo extends StatefulWidget {
  const PregnantMoreInfo({super.key});

  @override
  State<PregnantMoreInfo> createState() => _PregnantMoreInfoState();
}

class _PregnantMoreInfoState extends State<PregnantMoreInfo> {
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
                                // frame97q11 (254:511)
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
                                  'Nom complet:    Ivanna KITIO ',
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
                                  textValue: '+237 690000000'),
                              SizedBox(
                                height: 30 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Email',
                                  textValue: 'ivankitio@gmail.com'),
                              SizedBox(
                                height: 30 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Age',
                                  textValue: '24 ans'),
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
                            textName: 'Début de grossesses',
                            textValue: '24 - 12 - 2023 '),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Taille',
                            textValue: '1.70m'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Poids',
                            textValue: '90kg'),
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
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Votre origin',
                            textValue: 'Africain'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Conception in vitro',
                            textValue: 'Oui'),
                        SizedBox(
                          height: 17 * fem,
                        ),
                        InfoItemWidget(
                            fem: fem,
                            ffem: ffem,
                            textName: 'Votre origin',
                            textValue: 'Africain'),
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
                                  textName: 'Hypertension',
                                  textValue: 'Non'),
                              SizedBox(
                                height: 17 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Diabète',
                                  textValue: 'Oui'),
                              SizedBox(
                                height: 17 * fem,
                              ),
                              InfoItemWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textName: 'Prééclampsie',
                                  textValue: 'Non'),
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
