import 'package:benda/presentation/screen/genyco/personalInfo.dart';
import 'package:benda/presentation/widgets/form_field.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class EditProfil extends StatefulWidget {
  @override
  State<EditProfil> createState() => _EditProfil();
  const EditProfil({super.key});
}

class _EditProfil extends State<EditProfil> {
  final _hospitalList = [
    "Hopital general de Douala",
    "Hopital general Laquintini",
    "Hopital general d'edea",
    "Hopital general de Yaounde"
  ];

  String? _selectedVal = "Hopital general de Douala";

  _HospitalState() {
    _selectedVal = _hospitalList[0];
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
        child: Container(
          width: double.infinity,
          child: Container(
            // iphone13promax14YfH (254:440)

            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff8f9f9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupjx9dzZD (TjxnemZ71D4JKf1fCaJx9d)
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // infopersonnelSW3 (254:412)
                        margin: EdgeInsets.only(top: 40, bottom: 20),
                        child: Text(
                          'Edition de profil',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.8 * ffem / fem,
                            color: Color(0xff5c5a5a),
                          ),
                        ),
                      ),
                      TextFieldWidget(
                          fem: fem,
                          ffem: ffem,
                          fieldName: "Nom complet",
                          defaultValue: "Ivan KITIO",
                          placeholder: "Nom complet"),
                      SizedBox(
                        height: 30 * fem,
                      ),
                      NumberFieldWidget(
                          fem: fem,
                          ffem: ffem,
                          fieldName: "Téléphone",
                          defaultValue: "690000000",
                          placeholder: "Téléphone"),
                      SizedBox(
                        height: 30 * fem,
                      ),
                      TextFieldWidget(
                          fem: fem,
                          ffem: ffem,
                          fieldName: "Email",
                          defaultValue: "ivankitio@gmail.com",
                          placeholder: "Email"),
                      SizedBox(
                        height: 30 * fem,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // hpital9z7 (289:539)

                            child: Text(
                              'Hôpital',
                              style: safeGoogleFont(
                                'Noto Sans',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                letterSpacing: 0.0140000002 * fem,
                                color: const Color(0xbf000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 20 * fem),
                            padding: EdgeInsets.fromLTRB(
                                22 * fem, 10 * fem, 17.5 * fem, 10 * fem),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0xffaeaeae)),
                              color: const Color(0x0fd9d9d9),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: DropdownButtonFormField(
                              value: _selectedVal,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                              items: _hospitalList.map((e) {
                                return DropdownMenuItem(
                                  child: Text(e),
                                  value: e,
                                );
                              }).toList(),
                              onChanged: ((value) {
                                setState(() {
                                  _selectedVal = value;
                                });
                              }),
                            ),
                          )
                        ],
                      ),
                      TextFieldWidget(
                          fem: fem,
                          ffem: ffem,
                          fieldName: "Matricule",
                          defaultValue: "1234567890",
                          placeholder: "Matricule"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const PersonalInfo();
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
                          'Enregistre',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 14 * ffem,
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
        ),
      ),
    );
  }
}
