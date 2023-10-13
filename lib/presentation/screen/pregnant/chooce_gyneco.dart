import 'package:benda/data/repositories/user_repository.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/gyneco/gyneco_bloc.dart';
import 'package:benda/logic/preg_to_gyneco/preg_to_gyneco_bloc.dart';
import 'package:benda/presentation/screen/pregnant/home_layout.dart';
import 'package:benda/presentation/widgets/genyco_card.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseGyneco extends StatefulWidget {
  const ChooseGyneco({super.key});

  @override
  State<ChooseGyneco> createState() => _ChooseGynecoState();
}

class _ChooseGynecoState extends State<ChooseGyneco> {
  List display_list = [];
  List main_list = [];

  void updateList(String value) {
    setState(() {
      display_list = main_list
          .where((element) =>
              element.firstName.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final authCubit = BlocProvider.of<AuthCubit>(context);
    var pregnant = authCubit.state as LoginCompleted;

    String gynecoFirstName = "";
    String gynecoLastName = "";
    String gynecoMatricule = "";
    String gynecoHospital = " ";

    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            GynecoBloc(userRepo: UserRepository())..add(GynecoLoadEvent()),
        child: BlocConsumer<GynecoBloc, GynecoState>(
          listener: (context, state) {
            if (state is GynecoCompleted) {
              setState(() {
                main_list = state.users;
                display_list = state.users;
              });
            }
          },
          builder: (context, state) {
            if (state is GynecoLoading) {
              return Center(
                child: const CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            }
            if (state is GynecoFailed) {
              var msg = state.message;
              return Center(
                child: Text("Fail to load data $msg"),
              );
            }
            if (state is GynecoCompleted) {
              return Container(
                margin: EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      "Trouvez un gynecologue pour votre suivie",
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125 * ffem / fem,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Commencez par envoyer des demandes aux gynécologues disponibles et attendez leurs reponses",
                      style: safeGoogleFont('Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: const Color.fromARGB(221, 104, 104, 104)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: Focus(
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
                    BlocConsumer<PregToGynecoBloc, PregToGynecoState>(
                      listener: (context, state) {
                        if (state is PregToGynecoCompleted) {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return HomeLayout(
                                gynecoFirstName: gynecoFirstName,
                                gynecoHospital: gynecoHospital,
                                gynecoLastName: gynecoLastName,
                                gynecoMatricule: gynecoMatricule);
                          }));
                        }
                      },
                      builder: (context, state) {
                        if (state is PregToGynecoLoading) {
                          return const CircularProgressIndicator(
                            color: Colors.blue,
                          );
                        }

                        if (state is PregToGynecoFailed) {
                          var msg = state.message;
                          return Center(
                            child: Text("Fail to load data $msg"),
                          );
                        }

                        return Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: display_list.length,
                              itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      gynecoFirstName =
                                          display_list[index].firstName;
                                      gynecoLastName =
                                          display_list[index].lastName;
                                      gynecoHospital =
                                          display_list[index].hospital;
                                      gynecoMatricule =
                                          display_list[index].licenseNumber ??
                                              "";

                                      BlocProvider.of<PregToGynecoBloc>(context)
                                          .add(PregToGynecoLoadEvent(
                                              pregnant.loginResponse?.id,
                                              display_list[index].id));
                                    },
                                    child: GenycoCard(
                                      fem: fem,
                                      ffem: ffem,
                                      name:
                                          "${display_list[index].firstName} ${display_list[index].lastName}",
                                      genycoimage: "ellipse-1-bg-F5q.png",
                                      hospitalName:
                                          "${display_list[index].hospital ?? ""}",
                                    ),
                                  )),
                        );
                      },
                    ),
                  ],
                ),
              );
            }

            return Container();
          },
        ),
      ),
    );
  }
}
