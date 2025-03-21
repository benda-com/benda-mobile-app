import 'package:benda/data/model/register_model.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/presentation/screen/genyco/home/home.dart';
import 'package:benda/presentation/screen/login.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final matriculeController = TextEditingController();
  final phoneController = TextEditingController();
  TextEditingController dateinput = TextEditingController();
  bool passToggle = true;

  bool isValidEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
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
                              "Nom",
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
                              controller: firstNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre mon";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Entrez votre nom",
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
                              "Prenom",
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
                              controller: lastNameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Entrer votre premon";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Entrez votre prenom",
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
                              "Email",
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
                              "Date de naissance",
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
                              controller: dateinput,
                              readOnly: true,
                              onTap: () async {
                                int firstPermitDate = DateTime.now().year - 15;
                                int lastPermitDate = DateTime.now().year - 50;
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    locale: const Locale("fr", "FR"),
                                    initialDate: DateTime(firstPermitDate - 1),
                                    firstDate: DateTime(
                                        lastPermitDate), //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(firstPermitDate));

                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                      DateFormat('dd-MM-yyyy')
                                          .format(pickedDate);
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2021-03-16
                                  //you can implement different kind of Date Format here according to your requirement

                                  setState(() {
                                    dateinput.text = formattedDate;
                                    //set output date to TextField value.
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                              decoration: InputDecoration(
                                icon: Icon(Icons.calendar_today),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3, color: Color(0xffaeaeae)),
                                    borderRadius: BorderRadius.circular(8)),
                                hintText: "Date de naissance",
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
                              "Téléphone",
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
                              "Matricule",
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
                  print(state);
                  if (state is RegisterCompleted &&
                      state.registerResponse?.isGynecologist == true) {
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
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {
                        List<String> bornDateArray = dateinput.text.split("-");
                        String year = bornDateArray[2];
                        String month = bornDateArray[1];
                        String day = bornDateArray[0];
                        String bornDate = "$year-$month-$day";
                        if (_formfield.currentState!.validate()) {
                          if (emailController.text.isNotEmpty &&
                              passController.text.isNotEmpty &&
                              firstNameController.text.isNotEmpty &&
                              lastNameController.text.isNotEmpty &&
                              phoneController.text.isNotEmpty &&
                              matriculeController.text.isNotEmpty) {
                            RegisterModel registerModel = RegisterModel(
                                firstName: firstNameController.text.trim(),
                                lastName: lastNameController.text.trim(),
                                email: emailController.text.trim(),
                                dateOfBirth: bornDate,
                                phoneNumber: phoneController.text.trim(),
                                password: passController.text.trim(),
                                isGynecologist: true,
                                isPregnantWoman: false,
                                hospital: _selectedVal,
                                licenseNumber: matriculeController.text.trim());
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
