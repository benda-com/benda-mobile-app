import 'package:benda/data/model/pregnant_model.dart';
import 'package:benda/presentation/screen/aboutUs.dart';
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
  bool _isVisible = true;

  static List<PregnantModel> main_pregnant_list = [
    PregnantModel(
        pregantAge: 34,
        nberOfWeek: 23,
        pregnantName: "Kenfack Johanne",
        pregnantImage: "ellipse-1-bg-F5q.png",
        isNormal: false),
    PregnantModel(
        pregantAge: 24,
        nberOfWeek: 24,
        pregnantName: "Ndonfack Christine",
        pregnantImage: "ellipse-1-bg-F5q.png",
        isNormal: true),
    PregnantModel(
        pregantAge: 32,
        nberOfWeek: 33,
        pregnantName: "Ngo Ndobo Viviane",
        pregnantImage: "ellipse-3-bg-g47.png",
        isNormal: true),
    PregnantModel(
        pregantAge: 21,
        nberOfWeek: 26,
        pregnantName: "Ntonga Belavie",
        pregnantImage: "ellipse-3-bg-g47.png",
        isNormal: false),
    PregnantModel(
        pregantAge: 25,
        nberOfWeek: 35,
        pregnantName: "Mbongo Raissa",
        pregnantImage: "ellipse-3-bg-g47.png",
        isNormal: false),
  ];

  List<PregnantModel> display_list = List.from(main_pregnant_list);

  List<PregnantModel> normalItem =
      main_pregnant_list.where((element) => element.isNormal == true).toList();

  void updateList(String value) {
    setState(() {
      display_list = main_pregnant_list
          .where((element) =>
              element.pregnantName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void normalPregnantList() {
    setState(() {
      display_list = main_pregnant_list
          .where((element) => element.isNormal == true)
          .toList();
      _isVisible = false;
    });
  }

  void anormalPregnantList() {
    setState(() {
      display_list = main_pregnant_list
          .where((element) => element.isNormal == false)
          .toList();
      _isVisible = false;
    });
  }

  void initPregnantList() {
    setState(() {
      display_list = main_pregnant_list;
      _isVisible = false;
    });
  }

  void showImg(value) {
    setState(() {
      if (value) {
        _isVisible = false;
      } else {
        _isVisible = true;
      }
    });
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
          width: 80,
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
      body: Container(
        width: double.infinity,
        child: Container(
          // iphone13promax6D5y (149:10)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f9f9),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(24 * fem, 18 * fem, 17 * fem, 5 * fem),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  visible: _isVisible,
                  child: Container(
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
                ),
                Container(
                  child: Text(
                    'Liste des patients ',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 22 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2857142857 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Focus(
                    onFocusChange: ((value) => showImg(value)),
                    child: TextFormField(
                      onChanged: (value) => updateList(value),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        prefixIconColor: Color(0xffaeaeae),
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Rechercher un patient ...",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: initPregnantList,
                      child: FilterButtonWidget(
                        fem: fem,
                        ffem: ffem,
                        textButton: "Tous",
                        nber: main_pregnant_list.length,
                        colorButton: Color.fromARGB(59, 27, 40, 235),
                        colorText: Color.fromARGB(238, 27, 41, 235),
                      ),
                    ),
                    InkWell(
                      onTap: normalPregnantList,
                      child: FilterButtonWidget(
                        fem: fem,
                        ffem: ffem,
                        textButton: "Normal",
                        nber: normalItem.length,
                        colorButton: Color.fromARGB(60, 38, 208, 15),
                        colorText: Colors.green,
                      ),
                    ),
                    InkWell(
                      onTap: anormalPregnantList,
                      child: FilterButtonWidget(
                        fem: fem,
                        ffem: ffem,
                        textButton: "Anormal",
                        nber: main_pregnant_list.length - normalItem.length,
                        colorButton: Color.fromARGB(60, 254, 0, 0),
                        colorText: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: display_list.length,
                      itemBuilder: (context, index) => PregnantCard(
                          fem: fem,
                          ffem: ffem,
                          name: display_list[index].pregnantName,
                          colorstatus: display_list[index].isNormal
                              ? Color(0xff08d635)
                              : Color.fromARGB(255, 214, 25, 8),
                          age: display_list[index].pregantAge,
                          week: display_list[index].nberOfWeek,
                          womenimage: display_list[index].pregnantImage,
                          status: display_list[index].isNormal
                              ? "Normal"
                              : "Anormal")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
