import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class FilterButtonWidget extends StatelessWidget {
  const FilterButtonWidget(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.textButton,
      required this.nber,
      required this.colorButton});

  final double fem;
  final double ffem;
  final String textButton;
  final int nber;
  final Color colorButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      // frame251ju (149:248)
      margin: EdgeInsets.fromLTRB(32.13 * fem, 0 * fem, 39.13 * fem, 17 * fem),
      width: double.infinity,
      height: 23 * fem,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame198Jj (149:249)
            padding:
                EdgeInsets.fromLTRB(14.13 * fem, 4 * fem, 14.13 * fem, 4 * fem),
            height: double.infinity,
            decoration: BoxDecoration(
              color: Color(0x330013c6),
              borderRadius: BorderRadius.circular(8 * fem),
              boxShadow: [
                BoxShadow(
                  color: colorButton,
                  offset: Offset(0 * fem, 4 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Row(
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
                      fontSize: 7 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: Color(0xff0013c6),
                    ),
                  ),
                ),
                Container(
                  // frame29X5y (149:252)
                  width: 15 * fem,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x4c3c50ff),
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
                        color: Color(0xff020c67),
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
