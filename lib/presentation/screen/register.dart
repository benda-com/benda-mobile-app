import 'package:benda/presentation/screen/genyco/register.dart';
import 'package:benda/presentation/screen/pregnant/register.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 60),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff9f9fa),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // fichier11AJK (I115:32;35:721)
                margin:
                    EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 15.55 * fem),
                width: 88 * fem,
                height: 89.45 * fem,
                child: Image.asset(
                  'images/benda_icon.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // bienvenuesurbenda5AP (115:18)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 44 * fem),
                child: Text(
                  'S\'incrire en tant que :',
                  style: safeGoogleFont(
                    'Roboto',
                    fontSize: 22 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2727272727 * ffem / fem,
                    color: Color(0xff5f5a68),
                  ),
                ),
              ),
              Container(
                // filledbuttonxzs (115:21)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 15 * fem),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const RegisterGenyco();
                      },
                    ));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        80.5 * fem, 15 * fem, 39 * fem, 15 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff0072c5),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 60 * fem, 0 * fem),
                          child: Text(
                            "Gynecologue",
                            style: safeGoogleFont(
                              'Noto Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              letterSpacing: 0.0140000002 * fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              TextButton(
                // filledbuttonGeB (115:23)

                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      40 * fem, 15 * fem, 38 * fem, 15 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xa30072c5),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Femme en enceinte',
                      textAlign: TextAlign.center,
                      style: safeGoogleFont(
                        'Noto Sans',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.4285714286 * ffem / fem,
                        letterSpacing: 0.0140000002 * fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const RegisterPregnant();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
