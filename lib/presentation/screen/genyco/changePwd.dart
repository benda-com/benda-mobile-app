import 'package:benda/presentation/screen/login.dart';
import 'package:benda/presentation/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class ChangePwd extends StatelessWidget {
  const ChangePwd({super.key});
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
          // iphone13promax15GnB (254:469)

          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f9f9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 30, left: 25),
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
              Container(
                // frame1018bR (254:475)
                margin: EdgeInsets.symmetric(horizontal: 25),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PasswordFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: "Ancien mot de passe",
                        placeholder: " "),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    PasswordFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: "Nouveau mot de passe",
                        placeholder: " "),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    PasswordFieldWidget(
                        fem: fem,
                        ffem: ffem,
                        fieldName: "Confirmer mot de passe",
                        placeholder: " "),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // frame63CoZ (254:496)
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const Login();
                      },
                    ));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff0072c5)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Enregistre',
                        style: safeGoogleFont(
                          'Roboto',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2 * ffem / fem,
                          color: Color(0xff0072c5),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
