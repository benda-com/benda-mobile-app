import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class FilterParameterWidget extends StatelessWidget {
  const FilterParameterWidget(
      {super.key,
      required this.fem,
      required this.ffem,
      required this.textButton});

  final double fem;
  final double ffem;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      // frame19Dkb (163:242)
      width: 74.5 * fem,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xff000000),
        borderRadius: BorderRadius.circular(8 * fem),
      ),
      child: Center(
        child: Text(
          textButton,
          textAlign: TextAlign.center,
          style: safeGoogleFont(
            'Inter',
            fontSize: 10 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.2125 * ffem / fem,
            color: Color(0xffffffff),
          ),
        ),
      ),
    );
  }
}
