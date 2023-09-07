import 'package:benda/presentation/screen/genyco/editProfil.dart';
import 'package:benda/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});
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
          // iphone13promax13oJf (254:408)

          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f9f9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // infopersonnelSW3 (254:412)
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 100 * fem, 174 * fem, 20 * fem),
                child: Text(
                  'Info personnel',
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
                // frame101vg7 (254:437)
                margin:
                    EdgeInsets.fromLTRB(62 * fem, 0 * fem, 35 * fem, 31 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Nom complet',
                        textValue: ' Ivan KITIO'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Téléphone',
                        textValue: '+237 690000000'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Email',
                        textValue: 'ivankitio@gmail.com'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Hôpital',
                        textValue: 'hôpital Laquintine de Douala'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Matricule',
                        textValue: '1234567890'),
                  ],
                ),
              ),
              Container(
                // frame63HBD (254:438)
                margin:
                    EdgeInsets.fromLTRB(240 * fem, 0 * fem, 0 * fem, 62 * fem),
                child: TextButton(
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
                    width: 118 * fem,
                    height: 38 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff0072c5)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Editer son profil',
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
