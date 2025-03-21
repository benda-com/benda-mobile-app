import 'package:benda/data/model/register_model.dart';
import 'package:benda/data/model/wright_parameters_model.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/wright_parameters/wright_parameters_cubit.dart';
import 'package:benda/presentation/screen/login.dart';
import 'package:benda/presentation/screen/pregnant/verify_device.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPregnant extends StatefulWidget {
  @override
  State<RegisterPregnant> createState() => _RegisterPregnant();
  const RegisterPregnant({super.key});
}

class _RegisterPregnant extends State<RegisterPregnant> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneController = TextEditingController();
  final weightController = TextEditingController();
  final tallController = TextEditingController();
  final gestWithPreeController = TextEditingController();
  final gestWithoutPreeController = TextEditingController();
  final betweenPregController = TextEditingController();
  final weekController = TextEditingController();
  TextEditingController dateinput = TextEditingController();

  int _currentStep = 0;
  String? _choiceInVitro = "non";
  String? _choiceSyn = "non";
  String? _choicePregnantWithPree = "non";
  String? _choicePregnant = "non";
  String? _choiceHyper = "non";
  String? _choicePreeFa = "non";
  String? _choiceDia = "non";

  final _originList = [
    "Afrique",
    "Sud-Asie",
  ];

  double makeBin(String? nameVar) {
    if (nameVar == "oui") {
      return 1;
    }
    return 0;
  }

  String? _selectedValOrigin = "Afrique";

  _originState() {
    _selectedValOrigin = _originList[0];
  }

  final _formfield = GlobalKey<FormState>();

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

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    final wrightParamsCubit = BlocProvider.of<WrightParametersCubit>(context);
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 80),
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              margin:
                  EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 30.55 * fem),
              width: 80 * fem,
              child: Image.asset(
                'images/test2-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Stepper(
                elevation: 0,
                type: StepperType.horizontal,
                currentStep: _currentStep,
                onStepTapped: (step) => setState(() => _currentStep = step),
                onStepContinue: _currentStep < 2
                    ? () => setState(() => _currentStep += 1)
                    : null,
                onStepCancel: _currentStep > 0
                    ? () => setState(() => _currentStep -= 1)
                    : null,
                controlsBuilder: (BuildContext ctx, ControlsDetails dtl) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: dtl.onStepCancel,
                        child: Text('Retour'),
                      ),
                      if (_currentStep >= 2)
                        TextButton(
                          onPressed: dtl.onStepContinue,
                          child: Container(
                            height: 50 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff0072c5),
                              borderRadius: BorderRadius.circular(8 * fem),
                            ),
                            child: BlocConsumer<WrightParametersCubit,
                                WrightParametersState>(
                              listener: (context, state) {
                                if (state is WrightParametersCompleted) {
                                  print("post parameter successfull");
                                }
                              },
                              builder: (context, state) {
                                return BlocConsumer<AuthCubit, AuthState>(
                                  listener: (context, state) {
                                    if (state is RegisterCompleted) {
                                      String? email =
                                          emailController.text.trim();
                                      String? password =
                                          passController.text.trim();
                                      print("Successfull register");

                                      if (email.isNotEmpty &&
                                          password.isNotEmpty) {
                                        authCubit.login(email, password);
                                      }
                                    }

                                    if (state is LoginCompleted) {
                                      print("Successfull login");
                                      double? gestWithout;
                                      double? gestWithPree;
                                      double? between;
                                      double tall = double.parse(
                                          tallController.text.trim());
                                      double weight = double.parse(
                                          weightController.text.trim());
                                      if (gestWithPreeController
                                          .text.isNotEmpty) {
                                        gestWithPree = double.parse(
                                            gestWithPreeController.text.trim());
                                      }

                                      if (gestWithoutPreeController
                                          .text.isNotEmpty) {
                                        gestWithout = double.parse(
                                            gestWithoutPreeController.text
                                                .trim());
                                      }

                                      if (betweenPregController
                                          .text.isNotEmpty) {
                                        between = double.parse(
                                            betweenPregController.text.trim());
                                      }

                                      String? origin =
                                          _selectedValOrigin == "Afrique"
                                              ? "black"
                                              : "asian";
                                      int age = DateTime.now().year -
                                          int.parse(
                                              dateinput.text.split("-")[2]);

                                      double dia = makeBin(_choiceDia);
                                      double hyper = makeBin(_choiceHyper);
                                      double inVitro = makeBin(_choiceInVitro);
                                      double preeFa = makeBin(_choicePreeFa);

                                      double pregnantWithPree = 0;
                                      double pregnantWithoutPree = 0;

                                      if (_choicePregnant == 'non') {
                                        if (_choicePregnantWithPree == "oui") {
                                          pregnantWithPree = 1;
                                          pregnantWithoutPree = 0;
                                        }
                                        if (_choicePregnantWithPree == "non") {
                                          pregnantWithPree = 0;
                                          pregnantWithoutPree = 1;
                                        }
                                      }
                                      if (_choicePregnant == 'oui') {
                                        pregnantWithPree = 0;
                                        pregnantWithoutPree = 0;
                                      }
                                      double syn = makeBin(_choiceSyn);

                                      WrightParametersModel
                                          wrightParametersModel =
                                          WrightParametersModel(
                                              age: age,
                                              chronicHypertension: hyper,
                                              diabetes: dia,
                                              familyHistoryPe: preeFa,
                                              height: tall,
                                              inVitroConception: inVitro,
                                              origin: origin,
                                              parousNoPe: pregnantWithoutPree,
                                              parousNoPeDifference:
                                                  gestWithout ?? 0,
                                              parousNoPeInterval: between ?? 0,
                                              parousPe: pregnantWithPree,
                                              parousPeDifference:
                                                  gestWithPree ?? 0,
                                              sle: syn,
                                              weight: weight);
                                      wrightParamsCubit.wrightParameters(
                                          wrightParametersModel,
                                          state.loginResponse?.token);
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (BuildContext context) {
                                            return const VerifyDevice();
                                          },
                                        ),
                                      );
                                    }
                                  },
                                  builder: (context, state) {
                                    if (state is AuthLoading) {
                                      return const CircularProgressIndicator(
                                        color: Colors.blue,
                                      );
                                    }
                                    return Center(
                                      child: TextButton(
                                        onPressed: () {
                                          List<String> bornDateArray =
                                              dateinput.text.split("-");
                                          String year = bornDateArray[2];
                                          String month = bornDateArray[1];
                                          String day = bornDateArray[0];
                                          String bornDate = "$year-$month-$day";
                                          if (emailController.text.isNotEmpty &&
                                              passController.text.isNotEmpty &&
                                              firstNameController
                                                  .text.isNotEmpty &&
                                              lastNameController
                                                  .text.isNotEmpty &&
                                              phoneController.text.isNotEmpty) {
                                            RegisterModel registerModel =
                                                RegisterModel(
                                                    firstName:
                                                        firstNameController.text
                                                            .trim(),
                                                    lastName: lastNameController
                                                        .text
                                                        .trim(),
                                                    email: emailController
                                                        .text
                                                        .trim(),
                                                    dateOfBirth: bornDate,
                                                    phoneNumber:
                                                        phoneController
                                                            .text
                                                            .trim(),
                                                    password: passController.text
                                                        .trim(),
                                                    pregnantWomanPrenancyWeek:
                                                        int.parse(weekController
                                                            .text
                                                            .trim()),
                                                    isGynecologist: false,
                                                    isPregnantWoman: true);
                                            authCubit.register(registerModel);
                                          }
                                        },
                                        child: Text(
                                          "Confirmer",
                                          style: safeGoogleFont(
                                            'Noto Sans',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.4285714286 * ffem / fem,
                                            letterSpacing: 0.0140000002 * fem,
                                            color: Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      if (_currentStep == 0)
                        TextButton(
                            onPressed: firstNameController.text.isNotEmpty &&
                                    lastNameController.text.isNotEmpty &&
                                    emailController.text.isNotEmpty &&
                                    phoneController.text.isNotEmpty &&
                                    passController.text.isNotEmpty &&
                                    isValidEmail(emailController.text.trim())
                                ? dtl.onStepContinue
                                : null,
                            child: Text('Suivant')),
                      if (_currentStep == 1)
                        TextButton(
                            onPressed: weightController.text.isNotEmpty &&
                                    tallController.text.isNotEmpty &&
                                    weekController.text.isNotEmpty &&
                                    _choiceInVitro != null &&
                                    _choiceSyn != null
                                ? dtl.onStepContinue
                                : null,
                            child: Text('Suivant')),
                    ],
                  );
                },
                steps: getSteps(),
              ),
            ),
            if (_currentStep == 0)
              Column(
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
    );
  }

  List<Step> getSteps() {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return <Step>[
      Step(
        state: _currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: _currentStep >= 0,
        title: const Text(""),
        content: Form(
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
                          return "Entrer votre nom";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Entrez votre nom",
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
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Entrez votre prenom",
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
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
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
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Entrez votre numéro de téléphone";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
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
                              DateFormat('dd-MM-yyyy').format(pickedDate);
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
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Date de naissance",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                ],
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
      ),
      Step(
        state: _currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: _currentStep >= 1,
        title: const Text(""),
        content: Form(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Semaine de grossesse",
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
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: weekController,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return "Entrez votre numéro de téléphone";
                      //   }
                      //   return null;
                      // },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Entrez votre semaine de grossesse",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Poids ",
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
                        FilteringTextInputFormatter(
                            RegExp(r'^(\d+)?\.?\d{0,2}'),
                            allow: true)
                      ],
                      controller: weightController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Entrer votre poid en Kg";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Entrer votre poid en Kg",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Taille ",
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
                      controller: tallController,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter(
                            RegExp(r'^(\d+)?\.?\d{0,2}'),
                            allow: true)
                      ],
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Ce champ est obligatoire";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Color(0xffaeaeae)),
                            borderRadius: BorderRadius.circular(8)),
                        hintText: "Entrer votre taille en m",
                        hintStyle: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      'Origine',
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
                      border: Border.all(color: const Color(0xffaeaeae)),
                      color: const Color(0x0fd9d9d9),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: DropdownButtonFormField(
                      value: _selectedValOrigin,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                      decoration: InputDecoration(border: InputBorder.none),
                      items: _originList.map((e) {
                        return DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        );
                      }).toList(),
                      onChanged: ((value) {
                        setState(() {
                          _selectedValOrigin = value;
                        });
                      }),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Conception in vitro",
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
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text("Oui"),
                          value: "oui",
                          groupValue: _choiceInVitro,
                          onChanged: (value) {
                            setState(() {
                              _choiceInVitro = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("Non"),
                          value: "non",
                          groupValue: _choiceInVitro,
                          onChanged: (value) {
                            setState(() {
                              _choiceInVitro = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Présence du syndrome lupus erythematosus(SLE) ou syndrome antiphospholipide",
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
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text("Oui"),
                          value: "oui",
                          groupValue: _choiceSyn,
                          onChanged: (value) {
                            setState(() {
                              _choiceSyn = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("Non"),
                          value: "non",
                          groupValue: _choiceSyn,
                          onChanged: (value) {
                            setState(() {
                              _choiceSyn = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      Step(
        state: _currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: _currentStep >= 2,
        title: const Text(""),
        content: Form(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Es-ce votre premier grossesse ? ",
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
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text("Oui"),
                          value: "oui",
                          groupValue: _choicePregnant,
                          onChanged: (value) {
                            setState(() {
                              _choicePregnant = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("Non"),
                          value: "non",
                          groupValue: _choicePregnant,
                          onChanged: (value) {
                            setState(() {
                              gestWithPreeController.text = "";
                              gestWithoutPreeController.text = "";
                              betweenPregController.text = "";
                              _choicePregnant = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              if (_choicePregnant == "non")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Accouchement avec survenance de prééclampsie ",
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
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text("Oui"),
                            value: "oui",
                            groupValue: _choicePregnantWithPree,
                            onChanged: (value) {
                              setState(() {
                                _choicePregnantWithPree = value;
                                gestWithoutPreeController.text = "";
                                betweenPregController.text = "";
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text("Non"),
                            value: "non",
                            groupValue: _choicePregnantWithPree,
                            onChanged: (value) {
                              setState(() {
                                _choicePregnantWithPree = value;
                                gestWithPreeController.text = "";
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              if (_choicePregnant == "non" && _choicePregnantWithPree == "oui")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Age gestationnel à l'accouchement",
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
                        controller: gestWithPreeController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Color(0xffaeaeae)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Age gestationnel en semaines",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              if (_choicePregnant == "non" && _choicePregnantWithPree == "non")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Age gestationnel à l'accouchement",
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
                        controller: gestWithoutPreeController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Color(0xffaeaeae)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Age gestationnel en semaines",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              if (_choicePregnant == "non" && _choicePregnantWithPree == "non")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Durée entre les deux accouchements en semaines",
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
                        controller: betweenPregController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Color(0xffaeaeae)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Durée entre les deux accouchements",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ],
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Présence de l'hypertension chronique",
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
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile(
                          title: Text("Oui"),
                          value: "oui",
                          groupValue: _choiceHyper,
                          onChanged: (value) {
                            setState(() {
                              _choiceHyper = value;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile(
                          title: Text("Non"),
                          value: "non",
                          groupValue: _choiceHyper,
                          onChanged: (value) {
                            setState(() {
                              _choiceHyper = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
              if (_choiceHyper == "non")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Présence de prééclampsie dans la famille",
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
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text("Oui"),
                            value: "oui",
                            groupValue: _choicePreeFa,
                            onChanged: (value) {
                              setState(() {
                                _choicePreeFa = value;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text("Non"),
                            value: "non",
                            groupValue: _choicePreeFa,
                            onChanged: (value) {
                              setState(() {
                                _choicePreeFa = value;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              if (_choiceHyper == "non")
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Présence de diabète sucré",
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
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text("Oui"),
                            value: "oui",
                            groupValue: _choiceDia,
                            onChanged: (value) {
                              setState(() {
                                _choiceDia = value;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text("Non"),
                            value: "non",
                            groupValue: _choiceDia,
                            onChanged: (value) {
                              setState(() {
                                _choiceDia = value;
                              });
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    ];
  }
}
