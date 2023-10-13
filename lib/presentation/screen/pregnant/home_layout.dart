import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/presentation/screen/aboutUs.dart';
import 'package:benda/presentation/screen/login.dart';
import 'package:benda/presentation/screen/pregnant/help.dart';
import 'package:benda/presentation/screen/pregnant/account.dart';
import 'package:benda/presentation/screen/pregnant/device_home.dart';
import 'package:benda/presentation/screen/pregnant/genyco_info.dart';
import 'package:benda/presentation/screen/pregnant/home.dart';
import 'package:benda/presentation/screen/pregnant/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLayout extends StatefulWidget {
  final String gynecoFirstName;
  final String gynecoLastName;
  final String gynecoMatricule;
  final String gynecoHospital;
  const HomeLayout(
      {super.key,
      required this.gynecoFirstName,
      required this.gynecoLastName,
      required this.gynecoMatricule,
      required this.gynecoHospital});

  @override
  State<HomeLayout> createState() => _HomeLayoutState(
        gynecoFirstName: gynecoFirstName,
        gynecoHospital: gynecoHospital,
        gynecoLastName: gynecoLastName,
        gynecoMatricule: gynecoMatricule,
      );
}

class _HomeLayoutState extends State<HomeLayout> {
  final String gynecoFirstName;
  final String gynecoLastName;
  final String gynecoMatricule;
  final String gynecoHospital;

  _HomeLayoutState(
      {required this.gynecoFirstName,
      required this.gynecoLastName,
      required this.gynecoMatricule,
      required this.gynecoHospital});
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    void __onItemtapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    List<Widget> _widgetOptions = <Widget>[
      GenycoInfo(
        gynecoFirstName: gynecoFirstName,
        gynecoHospital: gynecoHospital,
        gynecoLastName: gynecoLastName,
        gynecoMatricule: gynecoMatricule,
      ),
      const HomePregnant(),
      const DeviceHome(),
    ];
    final userBloc = BlocProvider.of<AuthCubit>(context);
    var user = userBloc.state as LoginCompleted;
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
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const NotificationPregnant();
                    },
                  ),
                );
              },
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
            icon: Icon(Icons.healing_outlined),
            label: 'Gyneco',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.device_hub),
            label: 'Dispositif',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                  "${user.loginResponse?.firstName} ${user.loginResponse?.lastName}",
                  style: TextStyle(color: Colors.black)),
              decoration: BoxDecoration(color: Color(0xfff8f9f9)),
              accountEmail: Text(user.loginResponse?.email ?? "",
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage("images/uppericons.png"),
                backgroundColor: Color.fromARGB(255, 169, 169, 169),
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
                    return Login();
                  },
                ));
              },
            ),
          ],
        ),
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }
}
