import 'package:benda/presentation/widgets/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class NotificationGyneco extends StatefulWidget {
  const NotificationGyneco({super.key});

  @override
  State<NotificationGyneco> createState() => _NotificationGynecoState();
}

class _NotificationGynecoState extends State<NotificationGyneco> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 100),
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
                    NotificationCard(
                        fem: fem,
                        ffem: ffem,
                        name: 'Benda',
                        genycoimage: "fichier-1-1.png",
                        hospitalName:
                            "L'equipe benda vous souhaite la bienvenue"),
                    NotificationCard(
                        fem: fem,
                        ffem: ffem,
                        name: 'Une nouvelle demande de suivi',
                        genycoimage: "fichier-1-1.png",
                        hospitalName: "Anne Sonia souhaite que vous la suivez"),
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
