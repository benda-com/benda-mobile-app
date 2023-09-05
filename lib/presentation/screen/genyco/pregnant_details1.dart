import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class PregnantDetails extends StatelessWidget {
  const PregnantDetails({super.key});
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupoycb6XZ (TjxTUeqW4CfeFHdQyZoycB)
              width: double.infinity,
              height: 922 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // image2DMH (163:215)
                    left: 35 * fem,
                    top: 218 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 358 * fem,
                        height: 195 * fem,
                        child: Image.asset(
                          'images/image-2-Kd9.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // frame26Jdd (163:241)
                    left: 35 * fem,
                    top: 181 * fem,
                    child: Container(
                      width: 358 * fem,
                      height: 32 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame19Dkb (163:242)
                            width: 74.5 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xff000000),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Proteine',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          Container(
                            // frame18HVZ (163:245)
                            width: 74.5 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffdfdede),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'TA',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff272626),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          Container(
                            // frame17ZT5 (163:248)
                            width: 74.5 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffdfdede),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Glycémie',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff272626),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          Container(
                            // frame16eDd (163:251)
                            width: 74.5 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xffdfdede),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Temp ',
                                textAlign: TextAlign.center,
                                style: safeGoogleFont(
                                  'Inter',
                                  fontSize: 10 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff272626),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // frame44LcF (163:264)
                    left: 35 * fem,
                    top: 733 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          56 * fem, 10.5 * fem, 59 * fem, 10.5 * fem),
                      width: 358 * fem,
                      height: 41 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xff08d635),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                  ),
                  Positioned(
                    // frame45qBd (163:272)
                    left: 35 * fem,
                    top: 798 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          8.6 * fem, 11 * fem, 8.6 * fem, 11 * fem),
                      width: 358 * fem,
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
                                Container(
                                  // frame35KW7 (163:275)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 8.6 * fem, 0 * fem),
                                  width: 21.49 * fem,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xffd9d9d9),
                                    borderRadius: BorderRadius.circular(
                                        10.7461738586 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      '1',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 10.0297613144 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff5c5a5a),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // arrowdownsigntonavigateCK1 (163:267)
                                  width: 17.19 * fem,
                                  height: 17.19 * fem,
                                  child: Image.asset(
                                    'images/arrow-down-sign-to-navigate-Ugf.png',
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
                  Positioned(
                    // autogroupkqkdXs5 (TjxSQrH9ViB7zxEKyqKqKd)
                    left: 21 * fem,
                    top: 48 * fem,
                    child: Container(
                      width: 380 * fem,
                      height: 39.3 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // arrowleftoutlineEmV (163:296)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 121 * fem, 4.3 * fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                width: 24 * fem,
                                height: 24 * fem,
                                child: Image.asset(
                                  'images/arrowleftoutline-nFh.png',
                                  width: 24 * fem,
                                  height: 24 * fem,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // test22XEo (186:119)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 120.68 * fem, 8.3 * fem),
                            width: 95.32 * fem,
                            height: 31 * fem,
                            child: Image.asset(
                              'images/test2-2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            // vectorSMm (299:828)
                            width: 19 * fem,
                            height: 24.08 * fem,
                            child: Image.asset(
                              'images/vector-vR5.png',
                              width: 19 * fem,
                              height: 24.08 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroup1lgpB4T (TjxSaM1Kr2Jwe1zXDs1LGP)
                    left: 35 * fem,
                    top: 425 * fem,
                    child: Container(
                      width: 358 * fem,
                      height: 80 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame53hHh (186:140)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 17 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 4 * fem, 4 * fem, 4 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffadabab)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4 * fem),
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
                              children: [
                                Container(
                                  // frame52xjR (186:139)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 48 * fem, 13 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // protinurie6Kq (186:124)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                        child: Text(
                                          'Protéinurie',
                                          style: safeGoogleFont(
                                            'Roboto',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // mgBs5 (186:129)
                                        '12 mg',
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
                                Container(
                                  // frame51KiP (186:138)
                                  width: 27 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame48TJo (186:133)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 36 * fem),
                                        width: double.infinity,
                                        height: 20 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0x1908d635),
                                          borderRadius:
                                              BorderRadius.circular(4 * fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Normal',
                                            style: safeGoogleFont(
                                              'Roboto',
                                              fontSize: 7 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 2.2857142857 * ffem / fem,
                                              color: Color(0xff03d932),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // h00XZZ (186:128)
                                        '12h00',
                                        style: safeGoogleFont(
                                          'Roboto',
                                          fontSize: 7 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2.2857142857 * ffem / fem,
                                          color: Color(0xffadabab),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame54eu5 (186:458)
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 4 * fem, 4 * fem, 4 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffadabab)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4 * fem),
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
                              children: [
                                Container(
                                  // frame52KVR (186:459)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 48 * fem, 13 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // glycosurieFP5 (186:460)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                        child: Text(
                                          'Glycosurie',
                                          style: safeGoogleFont(
                                            'Roboto',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // mgxoH (186:461)
                                        '12 mg',
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
                                Container(
                                  // frame51WZu (186:462)
                                  width: 31 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame48SyM (186:463)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 36 * fem),
                                        width: double.infinity,
                                        height: 20 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0x1908d635),
                                          borderRadius:
                                              BorderRadius.circular(4 * fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Normal',
                                            style: safeGoogleFont(
                                              'Roboto',
                                              fontSize: 7 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 2.2857142857 * ffem / fem,
                                              color: Color(0xff03d932),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // h008LP (186:466)
                                        '12h00',
                                        style: safeGoogleFont(
                                          'Roboto',
                                          fontSize: 7 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2.2857142857 * ffem / fem,
                                          color: Color(0xffadabab),
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
                  ),
                  Positioned(
                    // autogroupefxsg71 (TjxSzqJXGwBe5PuSdqEfxs)
                    left: 35 * fem,
                    top: 517 * fem,
                    child: Container(
                      width: 358 * fem,
                      height: 80 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame55nvj (186:467)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 17 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 4 * fem, 4 * fem, 4 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffadabab)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4 * fem),
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
                              children: [
                                Container(
                                  // frame52gFR (186:468)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 48 * fem, 13 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ta24P (186:469)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                        child: Text(
                                          'TA',
                                          style: safeGoogleFont(
                                            'Roboto',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // mgXmq (186:470)
                                        '12 mg',
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
                                Container(
                                  // frame51GzK (186:471)
                                  width: 66 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame48qGj (186:472)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 36 * fem),
                                        width: double.infinity,
                                        height: 20 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0x1908d635),
                                          borderRadius:
                                              BorderRadius.circular(4 * fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Normal',
                                            style: safeGoogleFont(
                                              'Roboto',
                                              fontSize: 7 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 2.2857142857 * ffem / fem,
                                              color: Color(0xff03d932),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // h00unP (186:475)
                                        '12h00',
                                        style: safeGoogleFont(
                                          'Roboto',
                                          fontSize: 7 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2.2857142857 * ffem / fem,
                                          color: Color(0xffadabab),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame56fFm (186:476)
                            padding: EdgeInsets.fromLTRB(
                                12 * fem, 4 * fem, 1.5 * fem, 4 * fem),
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffadabab)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(4 * fem),
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
                              children: [
                                Container(
                                  // frame529wd (186:477)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 45.5 * fem, 13 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // temprature6by (186:478)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                        child: Text(
                                          'Température',
                                          style: safeGoogleFont(
                                            'Roboto',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // mgpH5 (186:479)
                                        '12 mg',
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
                                Container(
                                  // frame51Mno (186:480)
                                  width: 20 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame48hbm (186:481)
                                        margin: EdgeInsets.fromLTRB(2.5 * fem,
                                            0 * fem, 2.5 * fem, 36 * fem),
                                        width: double.infinity,
                                        height: 20 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0x1908d635),
                                          borderRadius:
                                              BorderRadius.circular(4 * fem),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Normal',
                                            style: safeGoogleFont(
                                              'Roboto',
                                              fontSize: 7 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 2.2857142857 * ffem / fem,
                                              color: Color(0xff03d932),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // h00yZH (186:484)
                                        '12h00',
                                        style: safeGoogleFont(
                                          'Roboto',
                                          fontSize: 7 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2.2857142857 * ffem / fem,
                                          color: Color(0xffadabab),
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
                  ),
                  Positioned(
                    // frame225vDd (340:434)
                    left: 35 * fem,
                    top: 609 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          12 * fem, 4 * fem, 4 * fem, 4 * fem),
                      width: 171 * fem,
                      height: 80 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffadabab)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(4 * fem),
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
                        children: [
                          Container(
                            // frame52zDV (340:435)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 48 * fem, 13 * fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // freqcardi9V (340:436)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                  child: Text(
                                    'Freq. Card',
                                    style: safeGoogleFont(
                                      'Roboto',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff5c5a5a),
                                    ),
                                  ),
                                ),
                                Text(
                                  // mgpyD (340:437)
                                  '12 mg',
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
                          Container(
                            // frame51mtT (340:438)
                            width: 33 * fem,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // frame48uzf (340:439)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 36 * fem),
                                  width: double.infinity,
                                  height: 20 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0x1908d635),
                                    borderRadius:
                                        BorderRadius.circular(4 * fem),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Normal',
                                      style: safeGoogleFont(
                                        'Roboto',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 2.2857142857 * ffem / fem,
                                        color: Color(0xff03d932),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  // h00oKM (340:442)
                                  '12h00',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 7 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 2.2857142857 * ffem / fem,
                                    color: Color(0xffadabab),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // frame579e7 (186:506)
                    left: 45 * fem,
                    top: 113 * fem,
                    child: Container(
                      width: 337 * fem,
                      height: 44 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame59Fx3 (186:510)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 139 * fem, 0 * fem),
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
                  Positioned(
                    // frame2211Jw (299:629)
                    left: 38 * fem,
                    top: 854 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          5 * fem, 3.5 * fem, 5 * fem, 3.5 * fem),
                      width: 355 * fem,
                      height: 22 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffadabab)),
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8 * fem),
                          topRight: Radius.circular(8 * fem),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // pathologiesc3 (299:627)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 221 * fem, 0 * fem),
                            child: Text(
                              'Pathologie',
                              textAlign: TextAlign.center,
                              style: safeGoogleFont(
                                'Inter',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff5c5a5a),
                              ),
                            ),
                          ),
                          Text(
                            // probabilitC8X (299:628)
                            'Probabilité',
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff5c5a5a),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // frame224vaK (299:635)
                    left: 36 * fem,
                    top: 876 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          5 * fem, 11 * fem, 5 * fem, 11 * fem),
                      width: 357 * fem,
                      height: 37 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8 * fem),
                          bottomLeft: Radius.circular(8 * fem),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // prclampsieQkP (299:633)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 247 * fem, 0 * fem),
                            child: Text(
                              'Prééclampsie',
                              style: safeGoogleFont(
                                'Inter',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w300,
                                height: 1.2125 * ffem / fem,
                                color: Color(0xff5c5a5a),
                              ),
                            ),
                          ),
                          Text(
                            // vTq (299:634)
                            '75%',
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff5c5a5a),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame44Tif (186:485)
              padding:
                  EdgeInsets.fromLTRB(0 * fem, 30 * fem, 0 * fem, 30 * fem),
              width: double.infinity,
              height: 125 * fem,
              decoration: BoxDecoration(
                color: Color(0xfff9f9fa),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame38B8s (186:486)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            72 * fem, 7.89 * fem, 72 * fem, 7.5 * fem),
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // historyrko (186:503)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 5.39 * fem),
                              width: 24.22 * fem,
                              height: 24.22 * fem,
                              child: Image.asset(
                                'images/history.png',
                                width: 24.22 * fem,
                                height: 24.22 * fem,
                              ),
                            ),
                            Text(
                              // historiqueyKd (186:489)
                              'Historique',
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                color: Color(0xff5c5b5b),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    // frame39WqM (186:494)
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          71 * fem, 3.33 * fem, 71 * fem, 0 * fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // bodybuttonpr3 (186:499)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0.02 * fem, 8.33 * fem),
                            width: 25.09 * fem,
                            height: 33.33 * fem,
                            child: Image.asset(
                              'images/bodybutton-hvw.png',
                              width: 25.09 * fem,
                              height: 33.33 * fem,
                            ),
                          ),
                          Text(
                            // plusdinfoYX9 (186:498)
                            'Plus d’info',
                            style: safeGoogleFont(
                              'Roboto',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              color: Color(0xff5c5b5b),
                            ),
                          ),
                        ],
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
