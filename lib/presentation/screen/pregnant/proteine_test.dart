import 'package:benda/presentation/screen/pregnant/home_layout.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class ProteineTest extends StatefulWidget {
  const ProteineTest({super.key});

  @override
  State<ProteineTest> createState() => _ProteineTestState();
}

class _ProteineTestState extends State<ProteineTest> {
  final List<ColorItem> items = [
    ColorItem("100", Colors.green),
    ColorItem("150", Colors.yellow),
    ColorItem("200", Colors.blue),
  ];
  late ColorItem currentChoice;
  @override
  void initState() {
    currentChoice = items[0];
    super.initState();
  }

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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          children: [
            Text(
              "Comparer les zones réactives avec les couleurs correspondantes sur le nuancier du flacon en tenant compte des temps indiqués pour chaque paramètre.",
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
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Resultat du test: ${currentChoice.value} mg",
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
                Container(
                  margin: EdgeInsets.all(16),
                  constraints: BoxConstraints(minHeight: 48.0),
                  color: currentChoice.color,
                  child: DropdownButton(
                    isExpanded: true,
                    value: currentChoice,
                    items: items
                        .map<DropdownMenuItem<ColorItem>>((ColorItem item) =>
                            DropdownMenuItem<ColorItem>(
                              value: item,
                              child: Container(
                                alignment: Alignment.center,
                                constraints: BoxConstraints(minHeight: 48.0),
                                color: item.color,
                              ),
                            ))
                        .toList(),
                    onChanged: (ColorItem? value) =>
                        setState(() => currentChoice = value!),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HomeLayout(
                        proteine: currentChoice.value,
                      );
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
                      'Envoyer le resultat',
                      style: safeGoogleFont(
                        'Roboto',
                        fontSize: 18 * ffem,
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
    );
  }
}

class ColorItem {
  ColorItem(this.value, this.color);
  final String value;
  final Color color;
}
