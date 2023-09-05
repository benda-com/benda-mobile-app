import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class ParameterCardWidget extends StatelessWidget {
  const ParameterCardWidget({
    super.key,
    required this.fem,
    required this.ffem,
    required this.paramName,
    required this.colorstatus,
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
  final Color colorstatus;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // frame52xjR (186:139)
          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 48 * fem, 13 * fem),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // protinurie6Kq (186:124)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                child: Text(
                  paramName,
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
                // mgBs5 (186:129)
                '${paramValue} ${paramUnit}',
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
          // frame51KiP (186:138)
          width: 27 * fem,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // frame48TJo (186:133)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 36 * fem),
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
                      color: colorstatus,
                    ),
                  ),
                ),
              ),
              Text(
                // h00XZZ (186:128)
                paramTime,
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
    );
  }
}
