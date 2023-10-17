import 'package:benda/data/repositories/auth_repository.dart';
import 'package:benda/data/repositories/risk_repository.dart';
import 'package:benda/data/repositories/user_repository.dart';
import 'package:benda/data/repositories/wright_params_repository.dart';
import 'package:benda/logic/auth/auth_cubit.dart';
import 'package:benda/logic/gyneco/gyneco_bloc.dart';
import 'package:benda/logic/patient/patient_bloc.dart';
import 'package:benda/logic/preg_to_gyneco/preg_to_gyneco_bloc.dart';
import 'package:benda/logic/risk/risk_bloc.dart';
import 'package:benda/logic/user/user_cubit.dart';
import 'package:benda/logic/wright_parameter/wright_parameters_bloc.dart';
import 'package:benda/logic/wright_parameters/wright_parameters_cubit.dart';
import 'package:benda/presentation/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import "package:benda/utils.dart";
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:timezone/data/latest.dart' as tz;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => AuthCubit(authRepo: AuthRepository()),
      ),
      BlocProvider(
        create: ((context) => WrightParametersCubit(
              wrightParamsRepo: WrightParamsRepository(),
            )),
      ),
      BlocProvider(
        create: ((context) => WrightParametersBloc(
              wrightParamsRepo: WrightParamsRepository(),
            )),
      ),
      BlocProvider(
        create: (context) => UserBloc(userRepo: UserRepository()),
      ),
      BlocProvider(
        create: (context) => GynecoBloc(userRepo: UserRepository()),
      ),
      BlocProvider(
        create: (context) => PregToGynecoBloc(userRepo: UserRepository()),
      ),
      BlocProvider(
        create: (context) => PatientBloc(userRepo: UserRepository()),
      ),
      BlocProvider(
        create: (context) => RiskBloc(riskRepo: RiskRepository()),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benda',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [const Locale('en'), const Locale('fr')],
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AnnotatedRegion(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          systemStatusBarContrastEnforced: false,
          systemNavigationBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.white,
        ),
        child: const SplashScreen(),
      ),
    );
  }
}
