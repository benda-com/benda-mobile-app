import 'package:benda/presentation/screen/genyco/params/history.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_more_info.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_params.dart';
import 'package:flutter/material.dart';

class PregnantDetails extends StatefulWidget {
  const PregnantDetails(
      {super.key, required this.name, required this.age, required this.week});

  final String name;
  final int age;
  final String? week;

  @override
  State<PregnantDetails> createState() =>
      _PregnantDetails(age: age, name: name, week: week);
}

class _PregnantDetails extends State<PregnantDetails> {
  int _selectedIndex = 1;

  final String name;
  final int age;
  final String? week;

  _PregnantDetails({
    required this.name,
    required this.age,
    required this.week,
  });
  void __onItemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      const History(),
      PregnantParams(age: age, name: name, week: week),
      const PregnantMoreInfo(),
    ];
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
