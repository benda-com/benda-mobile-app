import 'package:benda/presentation/screen/genyco/params/history.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_more_info.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_params.dart';
import 'package:flutter/material.dart';

class PregnantDetails extends StatefulWidget {
  const PregnantDetails({super.key});

  @override
  State<PregnantDetails> createState() => _PregnantDetails();
}

class _PregnantDetails extends State<PregnantDetails> {
  int _selectedIndex = 1;
  static final List<Widget> _widgetOptions = <Widget>[
    const History(),
    const PregnantParams(),
    const PregnantMoreInfo(),
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
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: __onItemtapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historique',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: "Parametres",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4),
            label: "Plus d'info",
          ),
        ],
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
    );
  }
}
