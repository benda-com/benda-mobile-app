import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class GenycoCard extends StatelessWidget {
  const GenycoCard({
    super.key,
    required this.fem,
    required this.ffem,
    required this.name,
    required this.genycoimage,
    required this.hospitalName,
  });

  final double fem;
  final double ffem;
  final String name;
  final String genycoimage;
  final String hospitalName;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color(0xffaeaeae), width: 0.5),
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        tileColor: Colors.white,
        leading: CircleAvatar(
          foregroundImage: AssetImage("images/${genycoimage}"),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: safeGoogleFont(
                'Inter',
                fontSize: 16 * ffem,
                fontWeight: FontWeight.w500,
                height: 1.2125 * ffem / fem,
                color: Color(0xff333333),
              ),
            ),
            SizedBox(
              height: 2 * fem,
            ),
            Text(
              hospitalName,
              style: safeGoogleFont(
                'Inter',
                fontSize: 13 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: Color(0xff5c5a5a),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
