import 'package:benda/presentation/widgets/graph.dart';
import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:benda/presentation/widgets/filter_parameter.dart';

class PregnantParams extends StatefulWidget {
  const PregnantParams({super.key});

  @override
  State<PregnantParams> createState() => _PregnantParamsState();
}

class _PregnantParamsState extends State<PregnantParams> {
  bool _isVisible = false;

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
                                  'Viviane FOKOU',
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
                                  '24 ans',
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
                          Text(
                            // semainesGcF (186:505)
                            '24 semaines',
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
                      children: [
                        FilterParameterWidget(
                            fem: fem, ffem: ffem, textButton: "Proteine"),
                        SizedBox(
                          width: 20 * fem,
                        ),
                        FilterParameterWidget(
                            fem: fem, ffem: ffem, textButton: "TA"),
                        SizedBox(
                          width: 20 * fem,
                        ),
                        FilterParameterWidget(
                            fem: fem, ffem: ffem, textButton: "Glycémie"),
                        SizedBox(
                          width: 20 * fem,
                        ),
                        FilterParameterWidget(
                            fem: fem, ffem: ffem, textButton: "Temp"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      // image2DMH (163:215)

                      child: GraphWidget()),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ParameterCardWidget(fem: fem, ffem: ffem),
                      ParameterCardWidget(fem: fem, ffem: ffem),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ParameterCardWidget(fem: fem, ffem: ffem),
                      ParameterCardWidget(fem: fem, ffem: ffem),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ParameterCardWidget(fem: fem, ffem: ffem),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
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
                            'Appeler madame FOKOU',
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
                              Container(
                                // pathologiesc3 (299:627)

                                child: Text(
                                  'Pathologie',
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
                                  'Prééclampsie',
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
                                // probabilitC8X (299:628)
                                'Probabilité',
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
                                '75%',
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
