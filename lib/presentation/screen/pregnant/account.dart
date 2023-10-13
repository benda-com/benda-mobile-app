import 'package:benda/presentation/screen/genyco/changePwd.dart';
import 'package:benda/presentation/screen/genyco/editProfil.dart';
import 'package:benda/presentation/screen/pregnant/personalInfo.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class Account extends StatelessWidget {
  const Account({super.key});

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
      body: Container(
        width: double.infinity,
        child: Container(
          // iphone13promax12Jg7 (254:330)
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f9f9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // compte8oZ (254:334)
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Compte',
                  style: safeGoogleFont(
                    'Roboto',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.8 * ffem / fem,
                    color: Color(0xff5c5a5a),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // frame73qxs (254:374)
                margin: EdgeInsets.symmetric(horizontal: 40),

                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                                return PregnantInfo();
                              },
                            ));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    // frameCS3 (254:401)

                                    child: Icon(
                                  Icons.info_outline,
                                  color: Colors.black54,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  // infopersonnelKmZ (254:378)
                                  'info personnel',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1 * ffem / fem,
                                    color: Color(0xff5c5a5a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                                return EditProfil();
                              },
                            ));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    // frameAGP (254:403)

                                    width: 19.5 * fem,
                                    child: Icon(
                                      Icons.edit_outlined,
                                      color: Colors.black54,
                                    )),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  // editermonprofil5PM (254:382)
                                  'Editer mon profil',
                                  style: safeGoogleFont(
                                    'Roboto',
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1 * ffem / fem,
                                    color: Color(0xff5c5a5a),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextButton(
                          // frame73bsV (254:383)
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                                return ChangePwd();
                              },
                            ));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                1.98 * fem, 0 * fem, 21 * fem, 0 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    // frameKHh (254:405)

                                    child: Icon(
                                  Icons.key_outlined,
                                  color: Colors.black54,
                                )),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  // changerdemotdepasseS7R (254:386)
                                  constraints: BoxConstraints(
                                    maxWidth: 170 * fem,
                                  ),
                                  child: Text(
                                    'Changer de mot de passe',
                                    style: safeGoogleFont(
                                      'Roboto',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1 * ffem / fem,
                                      color: Color(0xff5c5a5a),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
