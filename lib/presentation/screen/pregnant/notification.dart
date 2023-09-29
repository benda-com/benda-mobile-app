import 'package:benda/presentation/widgets/genyco_card.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class NotificationPregnant extends StatefulWidget {
  const NotificationPregnant({super.key});

  @override
  State<NotificationPregnant> createState() => _NotificationPregnantState();
}

class _NotificationPregnantState extends State<NotificationPregnant> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
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
                  ],
                ),
              ),
              SizedBox(
                height: 20,
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
      ),
    );
  }
}
