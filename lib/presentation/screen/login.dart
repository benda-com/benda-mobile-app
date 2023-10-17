import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/presentation/screen/genyco/home/home.dart';
import 'package:benda/presentation/screen/pregnant/home_layout.dart';
import 'package:benda/presentation/screen/register.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool _isCorrectCredentials = true;
  bool passToggle = true;

  bool isValidEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  bool _submitted = false;
  String? errorMessage = "Email ou mot de passe incorrect";

  String? get _errorTextEmail {
    final text = emailController.value.text;

    if (text.isEmpty) {
      return 'Ce champ est obligatiore';
    }
    if (!isValidEmail(text)) {
      return 'Renseigner une adresse email valide';
    }

    return null;
  }

  String? get _errorTextPassword {
    final text = passController.value.text;

    if (text.isEmpty) {
      return 'Ce champ est obligatiore';
    }
    return null;
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  void showErrorCredentials() {
    setState(() {
      _isCorrectCredentials = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final authCubit = BlocProvider.of<AuthCubit>(context);
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Container(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff9f9fa),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          19 * fem, 0 * fem, 0 * fem, 40.55 * fem),
                      width: 88 * fem,
                      height: 89.45 * fem,
                      child: Image.asset(
                        'images/fichier-1-1-w83.png',
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
                              if (!_isCorrectCredentials)
                                Text(
                                  errorMessage!,
                                  style: safeGoogleFont(
                                    'Noto Sans',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4285714286 * ffem / fem,
                                    letterSpacing: 0.0140000002 * fem,
                                    color: Color.fromARGB(190, 255, 0, 0),
                                  ),
                                ),
                              SizedBox(
                                height: 20,
                              ),
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
                                  onChanged: (_) => setState(() {}),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 3, color: Color(0xffaeaeae)),
                                        borderRadius: BorderRadius.circular(8)),
                                    hintText: "Adresse email",
                                    prefixIcon: Icon(Icons.email),
                                    errorText:
                                        _submitted ? _errorTextEmail : null,
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
                                  onChanged: (_) => setState(() {}),
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 3,
                                              color: Color(0xffaeaeae)),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      hintText: "Votre mot de passe",
                                      prefixIcon: Icon(Icons.lock),
                                      errorText: _submitted
                                          ? _errorTextPassword
                                          : null,
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
                    BlocConsumer<AuthCubit, AuthState>(
                      listener: (context, state) {
                        if (state is AuthFailed) {
                          setState(() {
                            _isCorrectCredentials = false;
                          });
                        }
                        if (state is LoginCompleted) {
                          if (state.loginResponse?.isGynecologist == true) {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const HomeGenyco();
                                },
                              ),
                            );
                          } else {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return HomeLayout();
                                },
                              ),
                            );
                          }
                        }
                      },
                      builder: (context, state) {
                        if (state is AuthLoading) {
                          return const CircularProgressIndicator(
                            color: Colors.blue,
                          );
                        }

                        // if (state is AuthFailed) {
                        //   return Text("${state.message}");
                        // }
                        return Container(
                          width: double.infinity,
                          height: 50 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff0072c5),
                            borderRadius: BorderRadius.circular(8 * fem),
                          ),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _submitted = true;
                                });
                                if (_errorTextEmail == null &&
                                    _errorTextPassword == null) {
                                  authCubit.login(emailController.text.trim(),
                                      passController.text.trim());
                                }
                              },
                              child: Text(
                                "Connexion",
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
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Vous n'avez pas un compte ?",
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
                                  return const Register();
                                },
                              ),
                            );
                          },
                          child: Text(
                            "Inscrivez-vous",
                            style: safeGoogleFont(
                              'Noto Sans',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              letterSpacing: 0.0140000002 * fem,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
