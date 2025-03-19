import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class HelpInfo extends StatelessWidget {
  const HelpInfo({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // iphone13promax119AP (254:217)
            padding:
                EdgeInsets.fromLTRB(21 * fem, 48 * fem, 34 * fem, 107 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff8f9f9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // aidey2w (254:221)
                  margin:
                      EdgeInsets.fromLTRB(41 * fem, 0 * fem, 0 * fem, 25 * fem),
                  child: Text(
                    'Aide',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.8 * ffem / fem,
                      color: Color(0xff5c5a5a),
                    ),
                  ),
                ),
                Container(
                  // loremipsumdolorsitametconsecte (254:265)
                  margin:
                      EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 25 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 348 * fem,
                  ),
                  child: Text(
                    """  En nous basant sur les concepts de l'IoT et l'intelligence artificielle nous apportons: une evaluation du risque de prééclampsie,  un Suivi en temps réel de la femme""",
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6 * ffem / fem,
                      color: Color(0xff5c5a5a),
                    ),
                  ),
                ),
                Container(
                  // frame934Th (254:275)
                  margin: EdgeInsets.fromLTRB(
                      25 * fem, 0 * fem, 20 * fem, 25 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame35Pks (254:266)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 42 * fem,
                        height: 42 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x190072c5),
                          borderRadius: BorderRadius.circular(21 * fem),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 19.6000003815 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff0072c5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // loremipsumdolorsitametconsecte (254:269)
                        constraints: BoxConstraints(
                          maxWidth: 272 * fem,
                        ),
                        child: Text(
                          'Incrivez-vous sur l"application',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.6 * ffem / fem,
                            color: Color(0xff5c5a5a),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // frame92VSX (254:274)
                  margin: EdgeInsets.fromLTRB(
                      25 * fem, 0 * fem, 17 * fem, 25 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame36pjh (254:271)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 42 * fem,
                        height: 42 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x190072c5),
                          borderRadius: BorderRadius.circular(21 * fem),
                        ),
                        child: Center(
                          child: Text(
                            '2',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 19.6000003815 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff3c50ff),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // loremipsumdolorsitametconsecte (254:270)
                        constraints: BoxConstraints(
                          maxWidth: 275 * fem,
                        ),
                        child: Text(
                          'Connectez votre dispositif a notre application',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.6 * ffem / fem,
                            color: Color(0xff5c5a5a),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // frame934Th (254:275)
                  margin: EdgeInsets.fromLTRB(
                      25 * fem, 0 * fem, 20 * fem, 25 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // frame35Pks (254:266)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14 * fem, 0 * fem),
                        width: 42 * fem,
                        height: 42 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x190072c5),
                          borderRadius: BorderRadius.circular(21 * fem),
                        ),
                        child: Center(
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: safeGoogleFont(
                              'Inter',
                              fontSize: 19.6000003815 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff0072c5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // loremipsumdolorsitametconsecte (254:269)
                        constraints: BoxConstraints(
                          maxWidth: 272 * fem,
                        ),
                        child: Text(
                          'Choississez votre gynecologue',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.6 * ffem / fem,
                            color: Color(0xff5c5a5a),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // pourplusdinforendezvoussurnotr (254:281)
                  margin:
                      EdgeInsets.fromLTRB(38 * fem, 0 * fem, 0 * fem, 0 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 269 * fem,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: safeGoogleFont(
                        'Roboto',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.5 * ffem / fem,
                        color: Color(0xff5c5a5a),
                      ),
                      children: [
                        TextSpan(
                          text:
                              "Pour plus d'info rendez-vous sur notre site web: ",
                        ),
                        TextSpan(
                          text: 'https://bendacm.net',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff0072c5),
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
