import 'package:benda/presentation/screen/genyco/aboutUs.dart';
import 'package:benda/presentation/screen/genyco/help.dart';
import 'package:benda/presentation/screen/genyco/home/account.dart';
import 'package:benda/presentation/screen/genyco/register.dart';
import 'package:flutter/material.dart';
import 'package:benda/presentation/widgets/filter_button.dart';
import 'package:benda/presentation/widgets/pregnant_card.dart';
import 'package:benda/utils.dart';

class HomeGenyco extends StatefulWidget {
  const HomeGenyco({super.key});

  @override
  State<HomeGenyco> createState() => _HomeGenycoState();
}

class _HomeGenycoState extends State<HomeGenyco> {
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
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: Color.fromARGB(255, 92, 91, 91),
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: 1,
          onTap: (value) {
            if (value == 1) {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Account()));
            }
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Parametre',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.share),
              label: 'Partager',
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName:
                    Text("Ivan KITIO", style: TextStyle(color: Colors.black)),
                decoration: BoxDecoration(color: Color(0xfff8f9f9)),
                accountEmail: Text("email@gmail.com",
                    style: TextStyle(color: Colors.black)),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage("images/ellipse-1-bg-F5q.png"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.key),
                title: Text("Compte"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Account();
                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Aide"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return HelpInfo();
                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("A propos de nous"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return AboutUs();
                    },
                  ));
                },
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Partager l'appli"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("Deconnection"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) {
                      return RegisterGenyco();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
        body: ListView(children: [
          Container(
            width: double.infinity,
            child: Container(
              // iphone13promax6D5y (149:10)
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff8f9f9),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(
                        24 * fem, 48 * fem, 17 * fem, 5 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // rectangle9cvj (155:52)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 7 * fem, 20 * fem),
                          width: double.infinity,
                          height: 123 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8 * fem),
                              topRight: Radius.circular(8 * fem),
                            ),
                            child: Image.asset(
                              'images/rectangle-9.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Liste des patients ',
                            style: safeGoogleFont(
                              'Roboto',
                              fontSize: 25 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2857142857 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  prefixIconColor: Color(0xffaeaeae),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Color(0xffaeaeae)),
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: "Rechercher un patient ...",
                                  hintStyle: TextStyle(fontSize: 14),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              // filtrestvB (155:51)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 280 * fem, 5 * fem),
                              child: Text(
                                'Filtres',
                                style: safeGoogleFont(
                                  'Roboto',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3333333333 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                FilterButtonWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textButton: "Tous",
                                  nber: 1,
                                  colorButton: Color.fromARGB(59, 27, 40, 235),
                                  colorText: Color.fromARGB(238, 27, 41, 235),
                                ),
                                FilterButtonWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textButton: "Normal",
                                  nber: 1,
                                  colorButton: Color.fromARGB(60, 38, 208, 15),
                                  colorText: Colors.green,
                                ),
                                FilterButtonWidget(
                                  fem: fem,
                                  ffem: ffem,
                                  textButton: "Anormal",
                                  nber: 1,
                                  colorButton: Color.fromARGB(60, 254, 0, 0),
                                  colorText: Colors.red,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            PregnantCard(
                                fem: fem,
                                ffem: ffem,
                                name: "Kenfack Johanne",
                                colorstatus: Color.fromARGB(255, 214, 25, 8),
                                age: 23,
                                week: 34,
                                womenimage: "ellipse-1-bg-F5q.png",
                                status: "Anormal"),
                            PregnantCard(
                                fem: fem,
                                ffem: ffem,
                                name: "Ndonfack Christine",
                                colorstatus: Color(0xff08d635),
                                age: 24,
                                week: 24,
                                womenimage: "ellipse-1-bg-F5q.png",
                                status: "Normal"),
                            PregnantCard(
                                fem: fem,
                                ffem: ffem,
                                name: "Ngo Ndobo Viviane",
                                colorstatus: Color(0xff08d635),
                                age: 32,
                                week: 33,
                                womenimage: "ellipse-3-bg-g47.png",
                                status: "Normal"),
                            PregnantCard(
                                fem: fem,
                                ffem: ffem,
                                name: "Ntonga Belavie",
                                colorstatus: Color(0xff08d635),
                                age: 21,
                                week: 26,
                                womenimage: "ellipse-3-bg-g47.png",
                                status: "Normal"),
                            PregnantCard(
                                fem: fem,
                                ffem: ffem,
                                name: "Mbongo Raissa",
                                colorstatus: Color.fromARGB(255, 214, 39, 8),
                                age: 25,
                                week: 35,
                                womenimage: "ellipse-1-bg-F5q.png",
                                status: "Anormal")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]));
  }
}
