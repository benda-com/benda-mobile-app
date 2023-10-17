import 'package:benda/utils.dart';
import 'package:benda/presentation/screen/genyco/params/pregnant_params_layout.dart';
import 'package:flutter/material.dart';

class PregnantCard extends StatelessWidget {
  const PregnantCard(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.name,
      required this.colorstatus,
      required this.age,
      required this.pregnantWomanPrenancyWeek,
      required this.womenimage,
      required this.dateOfBirth,
      required this.phoneNumber,
      required this.email,
      required this.id,
      required this.status});

  final double fem;
  final double ffem;
  final String name;
  final Color colorstatus;
  final int age;
  final int pregnantWomanPrenancyWeek;
  final String womenimage;
  final String status;
  final int? id;
  final String phoneNumber;
  final String email;
  final DateTime dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffaeaeae), width: 0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
              return PregnantDetails(
                age: age,
                name: name,
                pregnantWomanPrenancyWeek: pregnantWomanPrenancyWeek,
                phoneNumber: phoneNumber,
                email: email,
                dateOfBirth: dateOfBirth,
                id: id,
              );
            }),
          );
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          tileColor: Colors.white,
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 186, 185, 185),
            backgroundImage: AssetImage(
                "images/${womenimage == "" ? "uppericons.png" : womenimage}"),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(
                height: 2 * fem,
              ),
              if (pregnantWomanPrenancyWeek != "null")
                Text(
                  '${pregnantWomanPrenancyWeek} semaines',
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 13 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff5c5a5a),
                  ),
                ),
              SizedBox(
                height: 2 * fem,
              ),
              Text(
                // ansP67 (149:190)
                '${age} ans',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 13 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xffb1aeae),
                ),
              ),
            ],
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // normal4i3 (149:193)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5 * fem, 0 * fem),
                child: Text(
                  status,
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 12 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: colorstatus,
                  ),
                ),
              ),
              Container(
                // ellipse2Q1D (149:194)
                width: 8 * fem,
                height: 8 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4 * fem),
                  color: colorstatus,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
