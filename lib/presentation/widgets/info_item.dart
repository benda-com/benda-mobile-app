import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class InfoItemWidget extends StatelessWidget {
  const InfoItemWidget({
    super.key,
    required this.fem,
    required this.ffem,
    required this.textName,
    required this.textValue,
  });

  final double fem;
  final double ffem;
  final String textName;
  final String textValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      // frame97q11 (254:511)
      padding: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0 * fem, 10 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Color(0xffd9d9d9), width: 0.5)),
      ),
      child: Text(
        '${textName}:   ${textValue} ',
        style: safeGoogleFont(
          'Roboto',
          fontSize: 15 * ffem,
          fontWeight: FontWeight.w400,
          height: 1.3333333333 * ffem / fem,
          color: Color(0xff5c5a5a),
        ),
      ),
    );
  }
}
