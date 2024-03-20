import 'package:benda/presentation/screen/pregnant/empty_black.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class BrandletBrand extends StatelessWidget {
  const BrandletBrand({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 91, 91)),
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text(
                "Selectionner votre marque de bandellete",
                style: safeGoogleFont(
                  'Roboto',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.333333395 * ffem / fem,
                  color: Color.fromARGB(255, 46, 46, 46),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const EmptyBlack();
                    },
                  ),
                );
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffaeaeae), width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  tileColor: Colors.white,
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TODA MULTIDIAG 4",
                        style: safeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const EmptyBlack();
                    },
                  ),
                );
              },
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffaeaeae), width: 0.5),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  tileColor: Colors.white,
                  title: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "URITEST",
                        style: safeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff333333),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
