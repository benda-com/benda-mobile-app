import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class HistoryCardWidget extends StatelessWidget {
  const HistoryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // frame44Csh (299:753)

      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffadabab)),
            color: Color(0xffffffff),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // BUj (299:757)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
                    child: Text(
                      '24-09-2020',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color.fromARGB(255, 101, 99, 99),
                      ),
                    ),
                  ),
                  Text(
                    // h00VVR (299:758)
                    '12h00',
                    style: safeGoogleFont(
                      'Inter',
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2125 * ffem / fem,
                      color: Color.fromARGB(255, 176, 173, 173),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    // semainesEhu (299:764)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: Text(
                      '24 semaines',
                      style: safeGoogleFont(
                        'Inter',
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2125 * ffem / fem,
                        color: Color.fromARGB(255, 176, 173, 173),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
