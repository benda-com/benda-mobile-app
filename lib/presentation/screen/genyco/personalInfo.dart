import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/presentation/screen/genyco/editProfil.dart';
import 'package:benda/presentation/widgets/info_item.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final authCubit = BlocProvider.of<AuthCubit>(context);

    String? firstName = "";
    String? lastName = "";
    String? email = "";
    String? licenseNumber = "";
    String? phoneNumber = "";
    String? hospital = "";
    DateTime? dateOfBirth;

    if (authCubit.state is LoginCompleted) {
      LoginCompleted authState = authCubit.state as LoginCompleted;
      firstName = authState.loginResponse?.firstName;
      lastName = authState.loginResponse?.lastName;
      email = authState.loginResponse?.email;
      licenseNumber = authState.loginResponse?.licenseNumber;
      phoneNumber = authState.loginResponse?.phoneNumber;
      hospital = authState.loginResponse?.hospital;
      dateOfBirth = authState.loginResponse?.dateOfBirth;
    }
    if (authCubit.state is RegisterCompleted) {
      RegisterCompleted authState = authCubit.state as RegisterCompleted;
      firstName = authState.registerResponse?.firstName;
      lastName = authState.registerResponse?.lastName;
      email = authState.registerResponse?.email;
      licenseNumber = authState.registerResponse?.licenseNumber;
      phoneNumber = authState.registerResponse?.phoneNumber;
      hospital = authState.registerResponse?.hospital;
      dateOfBirth = authState.registerResponse?.dateOfBirth;
    }

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
      body: Container(
        width: double.infinity,
        child: Container(
          // iphone13promax13oJf (254:408)

          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f9f9),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // infopersonnelSW3 (254:412)
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 100 * fem, 174 * fem, 20 * fem),
                child: Text(
                  'Info personnel',
                  style: safeGoogleFont(
                    'Roboto',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.8 * ffem / fem,
                    color: Color(0xff5c5a5a),
                  ),
                ),
              ),
              Container(
                // frame101vg7 (254:437)
                margin:
                    EdgeInsets.fromLTRB(62 * fem, 0 * fem, 35 * fem, 31 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Nom:',
                        textValue: '$firstName'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Prenom: ',
                        textValue: '$lastName'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Téléphone',
                        textValue: '$phoneNumber'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Email',
                        textValue: '$email'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Date de naissance',
                        textValue: '${dateOfBirth.toString().split(' ')[0]}'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Hôpital',
                        textValue: '$hospital'),
                    SizedBox(
                      height: 30 * fem,
                    ),
                    InfoItemWidget(
                        fem: fem,
                        ffem: ffem,
                        textName: 'Matricule',
                        textValue: '$licenseNumber'),
                  ],
                ),
              ),
              Container(
                // frame63HBD (254:438)

                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) {
                        return EditProfil();
                      },
                    ));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 200,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff0072c5)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(8 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Editer son profil',
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
    );
  }
}
