import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class GenycoInfo extends StatelessWidget {
  final String gynecoFirstName;
  final String gynecoLastName;
  final String gynecoMatricule;
  final String gynecoHospital;

  const GenycoInfo(
      {super.key,
      required this.gynecoFirstName,
      required this.gynecoLastName,
      required this.gynecoMatricule,
      required this.gynecoHospital});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Container(
            height: 150,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.6,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      "images/uppericons.png",
                      color: Color.fromARGB(91, 0, 0, 0),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Column(
                    children: [
                      Text(
                        "Dr ${gynecoFirstName} ${gynecoLastName}",
                        style: safeGoogleFont(
                          'Inter',
                          fontSize: 20 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125 * ffem / fem,
                        ),
                      ),
                      Text(
                        "Gynecologue",
                        style: safeGoogleFont('Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: const Color.fromARGB(221, 104, 104, 104)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Matricule:",
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                  ),
                ),
                Text(
                  "${gynecoMatricule}",
                  style: safeGoogleFont('Inter',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: const Color.fromARGB(221, 104, 104, 104)),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hôpital:",
                  style: safeGoogleFont(
                    'Inter',
                    fontSize: 18 * ffem,
                    fontWeight: FontWeight.w500,
                    height: 1.2125 * ffem / fem,
                  ),
                ),
                Container(
                  width: 100,
                  child: Text(
                    "${gynecoHospital}",
                    style: safeGoogleFont('Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: const Color.fromARGB(221, 104, 104, 104)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
