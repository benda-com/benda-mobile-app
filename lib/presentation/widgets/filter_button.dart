import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  const FilterButtonWidget(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.textButton,
      required this.nber,
      required this.colorButton,
      required this.colorText});

  final double fem;
  final double ffem;
  final String textButton;
  final int nber;
  final Color colorButton;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // frame251ju (149:248)

      height: 30 * fem,

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame198Jj (149:249)
            padding: EdgeInsets.fromLTRB(12 * fem, 4 * fem, 12 * fem, 4 * fem),
            width: 95,
            decoration: BoxDecoration(
              color: colorButton,
              borderRadius: BorderRadius.circular(8 * fem),
              boxShadow: [
                BoxShadow(
                  color: Colors.white24,
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // tous1NX (149:251)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 1 * fem, 2 * fem, 0 * fem),
                  child: Text(
                    textButton,
                    textAlign: TextAlign.center,
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 10 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: colorText,
                    ),
                  ),
                ),
                Container(
                  // frame29X5y (149:252)
                  width: 18 * fem,

                  decoration: BoxDecoration(
                    color: colorButton,
                    borderRadius: BorderRadius.circular(7.5 * fem),
                  ),
                  child: Center(
                    child: Text(
                      nber.toString(),
                      textAlign: TextAlign.center,
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 7 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: colorText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
