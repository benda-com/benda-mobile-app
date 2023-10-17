import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        automaticallyImplyLeading: true,
        leading: BackButton(),
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
            // iphone13promax105fm (254:145)
            padding:
                EdgeInsets.fromLTRB(21 * fem, 48 * fem, 34 * fem, 79 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff8f9f9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  // aproposdenousW8o (254:149)
                  margin:
                      EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 23 * fem),
                  child: Text(
                    'A propos de nous',
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
                  // loremipsumdolorsitametconsecte (254:239)
                  margin:
                      EdgeInsets.fromLTRB(25 * fem, 0 * fem, 0 * fem, 50 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 348 * fem,
                  ),
                  child: Text(
                    '''        Bènda est une start up créée par un groupe de jeunes camerounais et conçu pour porter assistance en temps réel aux femmes enceintes afin de leurs prédire et prévenir les risques de survenance de la prééclampsie.
Grace à notre montre intelligente et notre application associées à l’intelligence artificielle, nous permettons à la femme enceinte de connaitre sa pression artérielle, sa température, son taux d’oxygène, sa protéinurie et sa glycosurie ; des paramètres médicaux nécessaires à surveiller pour diagnostiquer la prééclampsie. Aussi une fois ces paramètres prélever, ils seront également envoyés au médecin associé à la femme enceinte avec des recommandations faites par l’analyse des données de notre intelligence artificielle. Ce qui permet à chaque femme d’avoir un suivi personnalisé et efficace.
Nous sommes fiers de proposer une innovation exceptionnelle à nos consommateurs et d’aider nos utilisateurs à réaliser leur rêve.
En collaborant avec nous, vous pouvez être assurés que vous bénéficierez d’une assistance de haute qualité et d’un engagement envers l’excellence.
''',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3333333333 * ffem / fem,
                      color: Color(0xb2000000),
                    ),
                  ),
                ),
                Container(
                  // contacteznousEcX (254:247)
                  margin:
                      EdgeInsets.fromLTRB(21 * fem, 0 * fem, 0 * fem, 19 * fem),
                  child: Text(
                    'Contactez-nous',
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
                  // vianosrseauxsociauxxHd (254:253)
                  margin:
                      EdgeInsets.fromLTRB(21 * fem, 0 * fem, 0 * fem, 23 * fem),
                  child: Text(
                    'Via nos réseaux sociaux',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff5c5a5a),
                    ),
                  ),
                ),
                Container(
                  // frame76TVH (254:248)
                  margin: EdgeInsets.fromLTRB(
                      35.31 * fem, 0 * fem, 15.31 * fem, 22.41 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // whatsappnXZ (254:249)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 40 * fem, 0 * fem),
                        width: 50.59 * fem,
                        height: 50.59 * fem,
                        child: Image.asset(
                          'images/whatsapp.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // twitterK1h (254:250)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 40 * fem, 0 * fem),
                        width: 50.59 * fem,
                        height: 50.59 * fem,
                        child: Image.asset(
                          'images/twitter.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // facebookS6K (254:251)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 40 * fem, 0 * fem),
                        width: 50.59 * fem,
                        height: 50.59 * fem,
                        child: Image.asset(
                          'images/facebook.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // telegramMyy (254:252)
                        width: 50.59 * fem,
                        height: 50.59 * fem,
                        child: Image.asset(
                          'images/telegram.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // vianotresitewebhH9 (254:260)
                  margin:
                      EdgeInsets.fromLTRB(23 * fem, 0 * fem, 0 * fem, 16 * fem),
                  child: Text(
                    'Via notre site web',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 16 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.5 * ffem / fem,
                      color: Color(0xff5c5a5a),
                    ),
                  ),
                ),
                Container(
                  // frame90cf1 (254:264)
                  margin: EdgeInsets.only(bottom: 10, left: 20),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // framejUj (254:261)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 23 * fem, 0 * fem),
                        width: 18 * fem,
                        height: 18 * fem,
                        child: Image.asset(
                          'images/frame-F6f.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                      Text(
                        // httpsbendacomr3Z (254:263)
                        'https://benda.com',
                        style: safeGoogleFont(
                          'Roboto',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          decoration: TextDecoration.underline,
                          color: Color(0xff0072c5),
                          decorationColor: Color(0xff0072c5),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // notrepolitiquedeconfidentialit (254:369)
                  margin:
                      EdgeInsets.fromLTRB(21 * fem, 0 * fem, 0 * fem, 16 * fem),
                  child: Text(
                    'Notre politique de confidentialité',
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
                  // frame96g2b (254:373)
                  margin: EdgeInsets.only(left: 20),
                  padding:
                      EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frameBzw (254:370)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 23 * fem, 0 * fem),
                        width: 18 * fem,
                        height: 18 * fem,
                        child: Image.asset(
                          'images/frame-o6F.png',
                          width: 18 * fem,
                          height: 18 * fem,
                        ),
                      ),
                      Text(
                        // httpsbendacomconfidentialityXJ (254:372)
                        'https://benda.com/confidentiality',
                        style: safeGoogleFont(
                          'Roboto',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: Color(0xff0072c5),
                        ),
                      ),
                    ],
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
