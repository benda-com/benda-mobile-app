import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class ParameterCardWidget extends StatelessWidget {
  const ParameterCardWidget({
    super.key,
    required this.fem,
    required this.ffem,
    required this.paramName,
    required this.status,
    required this.paramValue,
    required this.paramUnit,
    required this.paramTime,
  });

  final double fem;
  final double ffem;
  final String paramName;
  final double paramValue;
  final String paramUnit;
  final String paramTime;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      height: 90 * fem,
      width: 210 * fem,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10 * fem, 4 * fem, 4 * fem, 4 * fem),
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffadabab)),
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(4 * fem),
              boxShadow: [
                BoxShadow(
                  color: Color(0x14000000),
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 17 * fem,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 48 * fem, 13 * fem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                        child: Text(
                          paramName,
                          textAlign: TextAlign.center,
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff5c5a5a),
                          ),
                        ),
                      ),
                      Text(
                        '$paramValue $paramUnit',
                        style: safeGoogleFont(
                          'Roboto',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.4285714286 * ffem / fem,
                          color: Color(0xff5c5a5a),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 27 * fem,
                  height: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 36 * fem),
                        width: double.infinity,
                        height: 20 * fem,
                        decoration: BoxDecoration(
                          color: Color(0x1908d635),
                          borderRadius: BorderRadius.circular(4 * fem),
                        ),
                        child: Center(
                          child: Text(
                            status,
                            style: safeGoogleFont(
                              'Roboto',
                              fontSize: 7 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.2857142857 * ffem / fem,
                              color: status == "Normal"
                                  ? Color(0xff03d932)
                                  : Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '12h00',
                        style: safeGoogleFont(
                          'Roboto',
                          fontSize: 7 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.2857142857 * ffem / fem,
                          color: Color(0xffadabab),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
