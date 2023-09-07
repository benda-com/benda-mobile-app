import 'package:benda/presentation/screen/genyco/home/home_layout.dart';
import 'package:benda/presentation/widgets/form_field.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class RegisterGenyco extends StatefulWidget {
  @override
  State<RegisterGenyco> createState() => _RegisterGenyco();
  const RegisterGenyco({super.key});
}

class _RegisterGenyco extends State<RegisterGenyco> {
  _HospitalState() {
    _selectedVal = _hospitalList[0];
  }

  final _hospitalList = [
    "Hopital general de Douala",
    "Hopital general Laquintini",
    "Hopital general d'edea",
    "Hopital general de Yaounde"
  ];

  String? _selectedVal = "Hopital general de Douala";

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        decoration: const BoxDecoration(
          color: Color(0xfff9f9fa),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // fichier11PgB (I115:73;35:721)
                    margin: EdgeInsets.fromLTRB(
                        1 * fem, 0 * fem, 0 * fem, 30.55 * fem),
                    width: 88 * fem,
                    height: 89.45 * fem,
                    child: Image.asset(
                      'images/benda_icon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  TextFieldWidget(
                      fem: fem,
                      ffem: ffem,
                      fieldName: 'Nom complet',
                      placeholder: 'Entrez votre nom complet'),
                  SizedBox(
                    height: 10,
                  ),
                  TextFieldWidget(
                      fem: fem,
                      ffem: ffem,
                      fieldName: 'Adresse email',
                      placeholder: 'Entrez votre adresse email'),
                  SizedBox(
                    height: 10,
                  ),
                  NumberFieldWidget(
                    fem: fem,
                    ffem: ffem,
                    fieldName: 'Numéro de téléphone',
                    placeholder: 'Entrez votre numéro de téléphone',
                  ),
                  SizedBox(
                    height: 10,
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
                          border: Border.all(color: const Color(0xffaeaeae)),
                          color: const Color(0x0fd9d9d9),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: DropdownButtonFormField(
                          value: _selectedVal,
                          style: TextStyle(fontSize: 12, color: Colors.black),
                          decoration: InputDecoration(border: InputBorder.none),
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
                      fieldName: 'Matricule',
                      placeholder: 'Entrez votre matricule'),
                  SizedBox(
                    height: 10,
                  ),
                  PasswordFieldWidget(
                      fem: fem,
                      ffem: ffem,
                      fieldName: 'Mot de passe',
                      placeholder: 'Entrez votre mot de passe'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // filledbuttonrxP (115:75)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomeGenyco();
                          },
                        ));
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        height: 50 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0xff0072c5),
                          borderRadius: BorderRadius.circular(8 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Inscription',
                            style: safeGoogleFont(
                              'Noto Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              letterSpacing: 0.0140000002 * fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
