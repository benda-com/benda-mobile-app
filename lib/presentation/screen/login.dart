import 'package:benda/presentation/screen/genyco/register.dart';
import 'package:benda/presentation/widgets/form_field.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: TextButton(
            // iphone13promax17LiK (289:517)
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(60 * fem, 247 * fem, 63 * fem, 313 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff9f9fa),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // fichier1125M (I289:524;35:721)
                    margin: EdgeInsets.fromLTRB(
                        19 * fem, 0 * fem, 0 * fem, 40.55 * fem),
                    width: 88 * fem,
                    height: 89.45 * fem,
                    child: Image.asset(
                      'images/fichier-1-1-w83.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFieldWidget(
                            fem: fem,
                            ffem: ffem,
                            fieldName: "Adresse email",
                            placeholder: "Adresse email"),
                        SizedBox(
                          height: 10,
                        ),
                        PasswordFieldWidget(
                          fem: fem,
                          ffem: ffem,
                          fieldName: "Mot de passe",
                          placeholder: "Votre mot de passe",
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // filledbutton55Z (289:525)
                    margin:
                        EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 302 * fem,
                    height: 45 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff0072c5),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const RegisterGenyco();
                            },
                          ));
                        },
                        child: Text(
                          "Connexion",
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
