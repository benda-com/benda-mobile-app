import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.textbutton});

  final double fem;
  final double ffem;
  final String textbutton;

  @override
  Widget build(BuildContext context) {
    return Container(
      // filledbutton55Z (289:525)
      margin: EdgeInsets.fromLTRB(3 * fem, 0 * fem, 0 * fem, 0 * fem),
      width: 302 * fem,
      height: 45 * fem,
      decoration: BoxDecoration(
        color: Color(0xff0072c5),
        borderRadius: BorderRadius.circular(8 * fem),
      ),
      child: Center(
        child: TextButton(
          child: Text(
            textbutton,
            style: safeGoogleFont(
              'Noto Sans',
              fontSize: 14 * ffem,
              fontWeight: FontWeight.w500,
              height: 1.4285714286 * ffem / fem,
              letterSpacing: 0.0140000002 * fem,
              color: Color(0xffffffff),
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
