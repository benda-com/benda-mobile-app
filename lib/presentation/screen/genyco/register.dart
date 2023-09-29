import 'package:benda/data/model/register_model.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/presentation/screen/genyco/home/home.dart';
import 'package:benda/presentation/screen/login.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterGenyco extends StatefulWidget {
  @override
  State<RegisterGenyco> createState() => _RegisterGenyco();
  const RegisterGenyco({super.key});
}

class _RegisterGenyco extends State<RegisterGenyco> {
  _HospitalState() {
    _selectedVal = _hospitalList[0];
  }

  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final nameController = TextEditingController();
  final matriculeController = TextEditingController();
  final phoneController = TextEditingController();
  bool passToggle = true;

  bool isValidEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
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
    final authCubit = BlocProvider.of<AuthCubit>(context);
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        decoration: const BoxDecoration(
          color: Color(0xfff9f9fa),
        ),
        child: SingleChildScrollView(
          child: Container(
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
                Form(
                  key: _formfield,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Nom complet",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              controller: nameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre mon complet";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Entrez votre nom complet",
                                hintStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Adresse email",
                              style: safeGoogleFont(
                                'Noto Sans',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                letterSpacing: 0.0140000002 * fem,
                                color: Color(0xbf000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            child: TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer une adresse email";
                                }

                                if (!isValidEmail(value.toString())) {
                                  return "Entrer une addresse email valide";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Adresse email",
                                hintStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Numéro de téléphone",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              controller: phoneController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrez votre numéro de téléphone";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Entrez votre numéro de téléphone",
                                hintStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          )
                        ],
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 20 * fem),
                            padding: EdgeInsets.symmetric(horizontal: 10),
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
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Votre Matricule",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              controller: matriculeController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrez votre matricule";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Entrez votre matricule",
                                hintStyle: TextStyle(fontSize: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Mot de passe",
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: TextFormField(
                              obscureText: passToggle,
                              controller: passController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre mot de passe";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3, color: Color(0xffaeaeae)),
                                      borderRadius: BorderRadius.circular(8)),
                                  hintText: "Votre mot de passe",
                                  hintStyle: TextStyle(fontSize: 14),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      setState(() {
                                        passToggle = !passToggle;
                                      });
                                    },
                                    child: Icon(passToggle
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
                  if (state is RegisterCompleted) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const HomeGenyco();
                        },
                      ),
                    );
                  }
                }, builder: (context, state) {
                  if (state is AuthLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.blue,
                    );
                  }
                  return Container(
                    // filledbuttonrxP (115:75)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        if (_formfield.currentState!.validate()) {
                          if (emailController.text.isNotEmpty &&
                              passController.text.isNotEmpty &&
                              nameController.text.isNotEmpty &&
                              phoneController.text.isNotEmpty &&
                              matriculeController.text.isNotEmpty) {
                            var fullName =
                                nameController.text.trim().split(' ');

                            String firstName = fullName[0];
                            String? lastName = fullName[1];
                            RegisterModel registerModel = RegisterModel(
                                firstName: firstName,
                                lastName: lastName,
                                email: emailController.text.trim(),
                                dateOfBirth: "2023-09-23",
                                phoneNumber: phoneController.text.trim(),
                                password: passController.text.trim(),
                                isGynecologist: true,
                                isPregnantWoman: false);
                            authCubit.register(registerModel);
                          }
                        }
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
                            'Créer un compte',
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
                  );
                }),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Vous avez déjà un compte ?",
                      style: safeGoogleFont(
                        'Noto Sans',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.4285714286 * ffem / fem,
                        letterSpacing: 0.0140000002 * fem,
                        color: const Color(0xbf000000),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                                return const Login();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Connectez-vous",
                          style: safeGoogleFont(
                            'Noto Sans',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.4285714286 * ffem / fem,
                            letterSpacing: 0.0140000002 * fem,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
