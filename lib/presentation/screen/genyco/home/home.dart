import 'package:benda/data/repositories/user_repository.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/patient/patient_bloc.dart';
import 'package:benda/presentation/screen/aboutUs.dart';
import 'package:benda/presentation/screen/genyco/help.dart';
import 'package:benda/presentation/screen/genyco/home/account.dart';
import 'package:benda/presentation/screen/genyco/notification.dart';
import 'package:benda/presentation/screen/login.dart';
import 'package:flutter/material.dart';
import 'package:benda/presentation/widgets/filter_button.dart';
import 'package:benda/presentation/widgets/pregnant_card.dart';
import 'package:benda/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeGenyco extends StatefulWidget {
  const HomeGenyco({super.key});

  @override
  State<HomeGenyco> createState() => _HomeGenycoState();
}

class _HomeGenycoState extends State<HomeGenyco> {
  bool _isVisible = true;

  List display_list = [];
  List main_list = [];

  @override
  void initState() {
    super.initState();
  }

  List normalItem = [];

  void updateList(String value) {
    setState(() {
      display_list = main_list
          .where((element) =>
              element.firstName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void normalPregnantList() {
    setState(() {
      display_list = main_list;
      _isVisible = false;
    });
  }

  void anormalPregnantList() {
    setState(() {
      display_list = [];
      _isVisible = false;
    });
  }

  // void normalPregnantList() {
  //   setState(() {
  //     display_list =
  //         main_list.where((element) => element.isNormal == true).toList();
  //     _isVisible = false;
  //   });
  // }

  // void anormalPregnantList() {
  //   setState(() {
  //     display_list =
  //         main_list.where((element) => element.isNormal == false).toList();
  //     _isVisible = false;
  //   });
  // }

  void initPregnantList() {
    setState(() {
      display_list = main_list;
      _isVisible = false;
    });
  }

  void showImg(value) {
    setState(() {
      if (value) {
        _isVisible = false;
      } else {
        _isVisible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final authCubit = BlocProvider.of<AuthCubit>(context);

    String? firstName = "";
    String? lastName = "";
    String? email = "";
    int? id;
    if (authCubit.state is LoginCompleted) {
      LoginCompleted authState = authCubit.state as LoginCompleted;
      id = authState.loginResponse?.id;
      firstName = authState.loginResponse?.firstName;
      lastName = authState.loginResponse?.lastName;
      email = authState.loginResponse?.email;
    }
    if (authCubit.state is RegisterCompleted) {
      RegisterCompleted authState = authCubit.state as RegisterCompleted;
      id = authState.registerResponse?.id;
      firstName = authState.registerResponse?.firstName;
      lastName = authState.registerResponse?.lastName;
      email = authState.registerResponse?.email;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 91, 91)),
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Image.asset(
          width: 80,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return NotificationGyneco();
                  }),
                );
              },
              icon: Icon(
                Icons.notifications,
                color: Color.fromARGB(255, 92, 91, 91),
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("${firstName} ${lastName}",
                  style: TextStyle(color: Colors.black)),
              decoration: BoxDecoration(color: Color(0xfff8f9f9)),
              accountEmail:
                  Text(email ?? "", style: TextStyle(color: Colors.black)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 186, 185, 185),
                backgroundImage: AssetImage("images/uppericons.png"),
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
      body: BlocProvider(
        create: (context) =>
            PatientBloc(userRepo: UserRepository())..add(PatientLoadEvent(id)),
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff8f9f9),
            ),
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(24 * fem, 18 * fem, 17 * fem, 5 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: _isVisible,
                    child: Container(
                      // rectangle9cvj (155:52)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 7 * fem, 20 * fem),
                      width: double.infinity,
                      height: 123 * fem,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8 * fem),
                          topRight: Radius.circular(8 * fem),
                        ),
                        child: Image.asset(
                          'images/rectangle-9.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      'Liste des patients ',
                      style: safeGoogleFont(
                        'Roboto',
                        fontSize: 22 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2857142857 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: Focus(
                      onFocusChange: ((value) => showImg(value)),
                      child: TextFormField(
                        onChanged: (value) => updateList(value),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Color(0xffaeaeae),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 3, color: Color(0xffaeaeae)),
                              borderRadius: BorderRadius.circular(8)),
                          hintText: "Rechercher un patient ...",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: initPregnantList,
                        child: FilterButtonWidget(
                          fem: fem,
                          ffem: ffem,
                          textButton: "Tous",
                          nber: main_list.length,
                          colorButton: Color.fromARGB(59, 27, 40, 235),
                          colorText: Color.fromARGB(238, 27, 41, 235),
                        ),
                      ),
                      InkWell(
                        onTap: normalPregnantList,
                        child: FilterButtonWidget(
                          fem: fem,
                          ffem: ffem,
                          textButton: "Normal",
                          // nber: normalItem.length,
                          nber: 5,
                          colorButton: Color.fromARGB(60, 38, 208, 15),
                          colorText: Colors.green,
                        ),
                      ),
                      InkWell(
                        onTap: anormalPregnantList,
                        child: FilterButtonWidget(
                          fem: fem,
                          ffem: ffem,
                          textButton: "Anormal",
                          // nber: main_list.length - normalItem.length,
                          nber: 1,
                          colorButton: Color.fromARGB(60, 254, 0, 0),
                          colorText: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  BlocConsumer<PatientBloc, PatientState>(
                    listener: (context, state) {
                      if (state is PatientCompleted) {
                        setState(() {
                          main_list = state.users;
                          display_list = state.users;
                        });
                      }
                    },
                    builder: (context, state) {
                      if (state is PatientLoading) {
                        return Center(
                          child: const CircularProgressIndicator(
                            color: Colors.blue,
                          ),
                        );
                      }
                      if (state is PatientFailed) {
                        var msg = state.message;

                        return Center(
                          child: Text("Fail to load data $msg"),
                        );
                      }

                      return Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: display_list.length,
                          itemBuilder: (context, index) => PregnantCard(
                              fem: fem,
                              ffem: ffem,
                              id: display_list[index].id,
                              email: display_list[index].email,
                              dateOfBirth: display_list[index].dateOfBirth,
                              phoneNumber: display_list[index].phoneNumber,
                              pregnantWomanPrenancyWeek:
                                  display_list[index].pregnantWomanPrenancyWeek,
                              name:
                                  "${display_list[index].firstName} ${display_list[index].lastName}",
                              age: DateTime.now().year -
                                  int.parse(display_list[index]
                                      .dateOfBirth
                                      .toString()
                                      .split(" ")[0]
                                      .split("-")[0]),
                              womenimage: "",
                              colorstatus: display_list[index].id == 91
                                  ? Colors.red
                                  : Color(0xff08d635),
                              status: display_list[index].id == 91
                                  ? "Anormal"
                                  : "Normal"

                              // colorstatus: display_list[index].isNormal
                              //     ? Color(0xff08d635)
                              //     : Color.fromARGB(255, 214, 25, 8),
                              // status: display_list[index].isNormal
                              //     ? "Normal"
                              //     : "Anormal",
                              ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
