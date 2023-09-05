import 'package:benda/utils.dart';
import 'package:benda/presentation/screen/genyco/pregnant_details.dart';
import 'package:flutter/material.dart';

class PregnantCard extends StatelessWidget {
  const PregnantCard(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.name,
      required this.colorstatus,
      required this.age,
      required this.week,
      required this.womenimage,
      required this.status});

  final double fem;
  final double ffem;
  final String name;
  final Color colorstatus;
  final int age;
  final int week;
  final String womenimage;
  final String status;

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
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) {
              return const PregnantDetails();
            },
          ));
        },
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          tileColor: Colors.white,
          leading: CircleAvatar(
            foregroundImage: AssetImage("images/ellipse-1-bg-F5q.png"),
          ),
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Viviane",
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff333333),
                ),
              ),
              SizedBox(
                height: 2 * fem,
              ),
              Text(
                // semainesTTM (149:189)
                '24 semaines',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 16 * ffem,
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
                '24 ans',
                style: safeGoogleFont(
                  'Inter',
                  fontSize: 15 * ffem,
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
                  "Normal",
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 14 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff08d635),
                  ),
                ),
              ),
              Container(
                // ellipse2Q1D (149:194)
                width: 8 * fem,
                height: 8 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4 * fem),
                  color: Color(0xff08d635),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
