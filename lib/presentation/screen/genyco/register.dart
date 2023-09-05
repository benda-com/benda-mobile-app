import 'package:benda/presentation/screen/genyco/home.dart';
import 'package:benda/presentation/widgets/form_field.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class RegisterGenyco extends StatelessWidget {
  const RegisterGenyco({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(62 * fem, 135 * fem, 63 * fem, 98 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xfff9f9fa),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // fichier11PgB (I115:73;35:721)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 30.55 * fem),
                      width: 88 * fem,
                      height: 89.45 * fem,
                      child: Image.asset(
                        'images/benda_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    TextFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: 'Nom complet',
                        placeholder: 'Entrez votre nom complet'),
                    SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: 'Adresse email',
                        placeholder: 'Entrez votre adresse email'),
                    SizedBox(
                      height: 10,
                    ),
                    NumberFieldWidget(
                      fem: fem,
                      ffem: ffem,
                      fieldName: 'Numéro de téléphone',
                      placeholder: 'Entrez votre numéro de téléphone',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // hpital9z7 (289:539)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 240 * fem, 4 * fem),
                      child: Text(
                        'Hôpital',
                        style: safeGoogleFont(
                          'Noto Sans',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.4285714286 * ffem / fem,
                          letterSpacing: 0.0140000002 * fem,
                          color: const Color(0xbf000000),
                        ),
                      ),
                    ),
                    Container(
                      // frame6Tzo (289:537)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 20 * fem),
                      padding: EdgeInsets.fromLTRB(
                          22 * fem, 10 * fem, 17.5 * fem, 10 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffaeaeae)),
                        color: const Color(0x0fd9d9d9),
                        borderRadius: BorderRadius.circular(8 * fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // hpitallaquintinidedoualaMqH (289:538)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 55.5 * fem, 0 * fem),
                            child: Text(
                              'Hôpital Laquintini de Douala',
                              style: safeGoogleFont(
                                'Noto Sans',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                letterSpacing: 0.0140000002 * fem,
                                color: const Color(0xffacabab),
                              ),
                            ),
                          ),
                          SizedBox(
                            // frameFvf (289:543)
                            width: 15 * fem,
                            height: 7.5 * fem,
                            child: Image.asset(
                              'images/arrow1.png',
                              width: 15 * fem,
                              height: 7.5 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: 'Matricule',
                        placeholder: 'Entrez votre matricule'),
                    SizedBox(
                      height: 10,
                    ),
                    PasswordFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: 'Mot de passe',
                        placeholder: 'Entrez votre mot de passe'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      // filledbuttonrxP (115:75)
                      margin: EdgeInsets.fromLTRB(
                          1 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const HomeGenyco();
                            },
                          ));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          width: 302 * fem,
                          height: 45 * fem,
                          decoration: BoxDecoration(
                            color: const Color(0xff0072c5),
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Inscription',
                              style: safeGoogleFont(
                                'Noto Sans',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                letterSpacing: 0.0140000002 * fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
