import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
    required this.fem,
    required this.ffem,
  });

  final double fem;
  final double ffem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(11 * fem, 0 * fem, 18 * fem, 11 * fem),
      padding: EdgeInsets.fromLTRB(10 * fem, 12.5 * fem, 12 * fem, 12.5 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffadabab)),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(8 * fem),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(),
          Container(
            // rechercherunpatientG87 (149:34)
            margin:
                EdgeInsets.fromLTRB(0 * fem, 0 * fem, 181.51 * fem, 0 * fem),
            child: Text(
              'Rechercher un ',
              style: safeGoogleFont(
                'Inter',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: Color(0xffadabab),
              ),
            ),
          ),
          Container(
            // searchxmd (149:31)
            width: 12.49 * fem,
            height: 12.49 * fem,
            child: Image.asset(
              'images/search.png',
              width: 12.49 * fem,
              height: 12.49 * fem,
            ),
          ),
        ],
      ),
    );
  }
}
