import 'package:benda/data/repositories/wright_params_repository.dart';
import 'package:benda/logic/risk/risk_bloc.dart';
import 'package:benda/logic/wright_parameter/wright_parameters_bloc.dart';
import 'package:benda/presentation/screen/genyco/params/history.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_more_info.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_params.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PregnantDetails extends StatefulWidget {
  const PregnantDetails(
      {super.key,
      required this.name,
      required this.id,
      required this.age,
      required this.pregnantWomanPrenancyWeek,
      required this.phoneNumber,
      required this.email,
      required this.dateOfBirth});

  final String name;
  final int age;
  final int pregnantWomanPrenancyWeek;
  final int? id;
  final String phoneNumber;
  final String email;
  final DateTime dateOfBirth;

  @override
  State<PregnantDetails> createState() => _PregnantDetails(
      age: age,
      name: name,
      pregnantWomanPrenancyWeek: pregnantWomanPrenancyWeek,
      phoneNumber: phoneNumber,
      email: email,
      dateOfBirth: dateOfBirth);
}

class _PregnantDetails extends State<PregnantDetails> {
  int _selectedIndex = 1;

  final String name;
  final int age;
  final int pregnantWomanPrenancyWeek;
  final String phoneNumber;
  final String email;
  final DateTime dateOfBirth;

  _PregnantDetails(
      {required this.name,
      required this.age,
      required this.pregnantWomanPrenancyWeek,
      required this.dateOfBirth,
      required this.email,
      required this.phoneNumber});
  void __onItemtapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      History(
        name: name,
      ),
      PregnantParams(
          age: age,
          name: name,
          pregnantWomanPrenancyWeek: pregnantWomanPrenancyWeek),
      PregnantMoreInfo(
          name: name,
          pregnantWomanPrenancyWeek: pregnantWomanPrenancyWeek,
          phoneNumber: phoneNumber,
          email: email,
          dateOfBirth: dateOfBirth),
    ];
    final riskBloc = BlocProvider.of<RiskBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        automaticallyImplyLeading: true,
        leading: BackButton(),
        elevation: 0,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedIndex,
        onTap: __onItemtapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historique',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: "Parametres",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4),
            label: "Plus d'info",
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) =>
            WrightParametersBloc(wrightParamsRepo: WrightParamsRepository())
              ..add(WrightParametersLoadEvent(email)),
        child: BlocListener<WrightParametersBloc, WrightParametersState>(
            listener: (context, state) {
          if (state is WrightParametersCompleted) {
            riskBloc.add(RiskLoadEvent(state.wrightParametersResponse?.id));
          }
        }, child: BlocBuilder<RiskBloc, RiskState>(
          builder: (context, state) {
            if (state is RiskInitial || state is RiskLoading) {
              return Center(
                child: const CircularProgressIndicator(
                  color: Colors.blue,
                ),
              );
            }
            if (state is RiskCompleted) {
              return Center(child: _widgetOptions[_selectedIndex]);
            }
            return Container();
          },
        )),
      ),
    );
  }
}
