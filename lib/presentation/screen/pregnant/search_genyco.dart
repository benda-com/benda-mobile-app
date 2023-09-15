import 'package:benda/presentation/widgets/genyco_card.dart';
import 'package:benda/presentation/widgets/pregnant_card.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class SearchGenyco extends StatefulWidget {
  const SearchGenyco({super.key});

  @override
  State<SearchGenyco> createState() => _SearchGenycoState();
}

class _SearchGenycoState extends State<SearchGenyco> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Trouver un Gynecologue pour votre suivi",
                style: safeGoogleFont(
                  'Noto Sans',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.4285714286 * ffem / fem,
                  letterSpacing: 0.0140000002 * fem,
                  color: const Color(0xbf000000),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Commencez par envoyer des demandes aux gynécologues disponibles et attendez leurs reponses",
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
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  prefixIconColor: Color(0xffaeaeae),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xffaeaeae)),
                      borderRadius: BorderRadius.circular(8)),
                  hintText: "Rechercher un genyco ...",
                  hintStyle: TextStyle(fontSize: 14),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GenycoCard(
                fem: fem,
                ffem: ffem,
                name: "Elie Mbah",
                genycoimage: "ellipse-15-bg.png",
                hospitalName: "Hopital Lanquintini"),
            GenycoCard(
                fem: fem,
                ffem: ffem,
                name: "Calvin K.",
                genycoimage: "ellipse-15-bg.png",
                hospitalName: "Hopital Lanquintini"),
            GenycoCard(
                fem: fem,
                ffem: ffem,
                name: "Elie Mbah",
                genycoimage: "ellipse-15-bg.png",
                hospitalName: "Hopital Lanquintini"),
            GenycoCard(
                fem: fem,
                ffem: ffem,
                name: "Calvin K.",
                genycoimage: "ellipse-15-bg.png",
                hospitalName: "Hopital Lanquintini"),
          ],
        ),
      ),
    );
  }
}
