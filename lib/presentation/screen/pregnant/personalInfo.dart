import 'package:benda/presentation/screen/genyco/editProfil.dart';
import 'package:benda/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  bool _isVisibleInfo = true;
  bool _isVisibleAnte = false;

  void showInfo() {
    setState(() {
      _isVisibleInfo = !_isVisibleInfo;
    });
  }

  void showAnte() {
    setState(() {
      _isVisibleAnte = !_isVisibleAnte;
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
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
