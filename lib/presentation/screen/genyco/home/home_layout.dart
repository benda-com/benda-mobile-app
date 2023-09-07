import 'package:benda/presentation/screen/genyco/aboutUs.dart';
import 'package:benda/presentation/screen/genyco/help.dart';
import 'package:benda/presentation/screen/genyco/home/account.dart';
import 'package:benda/presentation/screen/genyco/home/home.dart';
import 'package:flutter/material.dart';

class HomeGenyco extends StatefulWidget {
  const HomeGenyco({super.key});

  @override
  State<HomeGenyco> createState() => _HomeGenycoState();
}

class _HomeGenycoState extends State<HomeGenyco> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const Account(),
    const Home(),
  ];

  void __onItemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
          currentIndex: _selectedIndex,
          onTap: __onItemtapped,
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
                onTap: () {},
              ),
            ],
          ),
        ),
        body: _widgetOptions[_selectedIndex]);
  }
}
