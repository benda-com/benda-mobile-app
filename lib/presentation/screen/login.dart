import 'package:benda/presentation/screen/genyco/home/home.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  bool isValidEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          // iphone13promax17LiK (289:517)

          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff9f9fa),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  key: _formfield,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Adresse email",
                              style: safeGoogleFont(
                                'Noto Sans',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                letterSpacing: 0.0140000002 * fem,
                                color: Color(0xbf000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 50,
                            child: TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer une adresse email";
                                }

                                if (!isValidEmail(value.toString())) {
                                  return "Entrer une addresse email valide";
                                }
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Adresse email",
                                prefixIcon: Icon(Icons.email),
                                hintStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Mot de passe",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 50,
                            child: TextFormField(
                              obscureText: passToggle,
                              controller: passController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre mot de passe";
                                }
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Color(0xffaeaeae)),
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: "Votre mot de passe",
                                  prefixIcon: Icon(Icons.lock),
                                  hintStyle: TextStyle(fontSize: 14),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        passToggle = !passToggle;
                                      });
                                    },
                                    child: Icon(passToggle
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  )),
                            ),
                          )
                        ],
                      ),
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
                  width: double.infinity,
                  height: 50 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff0072c5),
                    borderRadius: BorderRadius.circular(8 * fem),
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: () {
                        if (_formfield.currentState!.validate()) {
                          print("success");
                          emailController.clear();
                          passController.clear();
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const HomeGenyco();
                              },
                            ),
                          );
                        }
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
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous n'avez pas un compte ?",
                      style: safeGoogleFont(
                        'Noto Sans',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.4285714286 * ffem / fem,
                        letterSpacing: 0.0140000002 * fem,
                        color: const Color(0xbf000000),
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Inscrivez-vous",
                          style: safeGoogleFont(
                            'Noto Sans',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.4285714286 * ffem / fem,
                            letterSpacing: 0.0140000002 * fem,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
