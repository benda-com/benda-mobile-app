import 'package:benda/presentation/screen/pregnant/notification.dart';
import 'package:benda/presentation/widgets/genyco_card.dart';
import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class HomePregnant extends StatefulWidget {
  const HomePregnant({super.key});

  @override
  State<HomePregnant> createState() => _HomePregnantState();
}

class _HomePregnantState extends State<HomePregnant> {
  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();
    var day = now.day;
    var year = now.year;
    var month = now.month;
    var hour = now.hour + 1;
    var minute = now.minute;

    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Johanne Doe",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                    ),
                  ),
                  Text(
                    "$day-$month-$year $hour:$minute",
                    style: safeGoogleFont('Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125 * ffem / fem,
                        color: const Color.fromARGB(221, 104, 104, 104)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Semaine de grossesse",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                    ),
                  ),
                  Text(
                    "21",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                      color: const Color.fromARGB(221, 104, 104, 104),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Etat du dispositif"),
                  Row(
                    children: [
                      Container(
                        // normal4i3 (149:193)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 5 * fem, 0 * fem),
                        child: Text(
                          "Connecter",
                          style: safeGoogleFont(
                            'Inter',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                          ),
                        ),
                      ),
                      Container(
                        // ellipse2Q1D (149:194)
                        width: 15 * fem,
                        height: 15 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6 * fem),
                          color: Colors.green,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ParameterCardWidget(
                  fem: fem,
                  ffem: ffem,
                  paramName: "Protéinurie",
                  paramTime: "12h00",
                  paramUnit: "mg",
                  status: "Normal",
                  paramValue: 12,
                ),
                ParameterCardWidget(
                  fem: fem,
                  ffem: ffem,
                  paramName: "Temperature",
                  paramTime: "12h00",
                  paramUnit: "°C",
                  status: "Normal",
                  paramValue: 37,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ParameterCardWidget(
                  fem: fem,
                  ffem: ffem,
                  paramName: "Freg. Card",
                  paramTime: "12h00",
                  paramUnit: "bpm",
                  status: "Normal",
                  paramValue: 120,
                ),
                ParameterCardWidget(
                  fem: fem,
                  ffem: ffem,
                  paramName: "TA",
                  paramTime: "12h00",
                  paramUnit: "mmHg",
                  status: "Normal",
                  paramValue: 120,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    width: 140,
                    height: 80,
                    child: Center(
                        child: Text(
                      "Aucun danger",
                      style: safeGoogleFont('Inter',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Colors.green),
                    ))),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2125 * ffem / fem,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const NotificationPregnant();
                            },
                          ),
                        );
                      },
                      child: Text("Voir plus")),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  GenycoCard(
                      fem: fem,
                      ffem: ffem,
                      name: 'Benda',
                      genycoimage: "fichier-1-1.png",
                      hospitalName:
                          "L'equipe benda vous souhaite la bienvenue"),
                  GenycoCard(
                      fem: fem,
                      ffem: ffem,
                      name: 'Feedback demande',
                      genycoimage: "fichier-1-1.png",
                      hospitalName: "Votre demande a ete bien approuve"),
                  GenycoCard(
                      fem: fem,
                      ffem: ffem,
                      name: 'Conseille santé',
                      genycoimage: "ellipse-15-bg.png",
                      hospitalName: "Evitez de dormir sans caleçon"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
