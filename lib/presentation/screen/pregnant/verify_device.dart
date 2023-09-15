import 'package:benda/presentation/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class VerifyDevice extends StatelessWidget {
  const VerifyDevice({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nous allons à présent lier un dispositif de collecte de vos données physiologiques. Reférez-vous à l’identifiant indiqué sur le dispositif",
            style: safeGoogleFont(
              'Noto Sans',
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.4285714286 * ffem / fem,
              letterSpacing: 0.0140000002 * fem,
              color: const Color(0xbf000000),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFieldWidget(
              fem: fem,
              ffem: ffem,
              fieldName: "Entrer l'identifiant du dispositif",
              placeholder: "Ex: 5321546877"),
          SizedBox(
            height: 20,
          ),
          Container(
            // filledbuttonrxP (115:75)
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) {
                    return VerifyDevice();
                  },
                ));
              },
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Container(
                height: 50 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xff0072c5),
                  borderRadius: BorderRadius.circular(8 * fem),
                ),
                child: Center(
                  child: Text(
                    'Verification',
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
        ],
      ),
    ));
  }
}
