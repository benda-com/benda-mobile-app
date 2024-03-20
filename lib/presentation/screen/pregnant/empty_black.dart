import 'package:benda/presentation/screen/pregnant/proteine_test.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class EmptyBlack extends StatelessWidget {
  const EmptyBlack({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 91, 91)),
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              Text(
                "Comment bien réaliser son test urinaire ? ",
                textAlign: TextAlign.center,
                style: safeGoogleFont(
                  'Roboto',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.333333395 * ffem / fem,
                  color: Color.fromARGB(255, 46, 46, 46),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "1- Bien se laver les mains et les parties intimes avec du savon ou une solution de Dakin. Si vous n’en avez pas, utilisez des lingettes intimes. ",
                style: safeGoogleFont(
                  'Roboto',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.333333395 * ffem / fem,
                  color: Color.fromARGB(221, 73, 73, 73),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "2- Éliminez le premier jet d’urine dans les toilettes. ",
                style: safeGoogleFont(
                  'Roboto',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.333333395 * ffem / fem,
                  color: Color.fromARGB(221, 73, 73, 73),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "3- Retirer la bandelette du flacon hermétiquement fermé et l’utiliser aussitôt. Immerger complètement les zones réactives de la bandelette dans de l’urine fraîche, bien mélanger et retirer immédiatement la bandelette pour éviter de dissoudre les réactifs. ",
                style: safeGoogleFont(
                  'Roboto',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.333333395 * ffem / fem,
                  color: Color.fromARGB(221, 73, 73, 73),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "4- Faire glisser le bord de la bandelette contre les bords du récipient pour enlever tout excès d’urine. Tenir la bandelette en position horizontale et la mettre en contact avec un tissu absorbant.",
                style: safeGoogleFont(
                  'Roboto',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.333333395 * ffem / fem,
                  color: Color.fromARGB(221, 73, 73, 73),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const ProteineTest();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Suivant",
                      style: safeGoogleFont(
                        'Noto Sans',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.4285714286 * ffem / fem,
                        letterSpacing: 0.0140000002 * fem,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
