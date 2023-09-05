import 'package:benda/utils.dart';
import 'package:flutter/material.dart';
import 'package:benda/presentation/widgets/filter_parameter.dart';

class PregnantDetails extends StatelessWidget {
  const PregnantDetails({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff8f9f9),
        automaticallyImplyLeading: true,
        elevation: 0,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'Historique',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4),
            label: "Plus d'info",
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: Container(
          // iphone13promax7nmm (163:76)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff8f9f9),
          ),
          child: ListView(
            children: [
              Container(
                width: double.infinity,
                height: 922 * fem,
                child: ListView(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 90 * fem,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame59Fx3 (186:510)

                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // vivianefokounSB (163:287)
                                    'Viviane FOKOU',
                                    style: safeGoogleFont(
                                      'Roboto',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.5 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  Text(
                                    // ansvYP (186:509)
                                    '24 ans',
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
                            Text(
                              // semainesGcF (186:505)
                              '24 semaines',
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.5 * ffem / fem,
                                color: Color(0xff5c5a5a),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      height: 32 * fem,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FilterParameterWidget(
                              fem: fem, ffem: ffem, textButton: "Proteine"),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          FilterParameterWidget(
                              fem: fem, ffem: ffem, textButton: "TA"),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          FilterParameterWidget(
                              fem: fem, ffem: ffem, textButton: "Glycémie"),
                          SizedBox(
                            width: 20 * fem,
                          ),
                          FilterParameterWidget(
                              fem: fem, ffem: ffem, textButton: "Temp"),
                        ],
                      ),
                    ),

                    Positioned(
                      // image2DMH (163:215)
                      left: 35 * fem,
                      top: 218 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 358 * fem,
                          height: 195 * fem,
                          child: Image.asset(
                            'images/image-2-Kd9.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      // autogroup1lgpB4T (TjxSaM1Kr2Jwe1zXDs1LGP)
                      
                      child: Container(
                        width: 358 * fem,
                        height: 100 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame53hHh (186:140)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 17 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  12 * fem, 4 * fem, 4 * fem, 4 * fem),
                              height: double.infinity,
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
                                children: [
                                  Container(
                                    // frame52xjR (186:139)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 48 * fem, 13 * fem),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // protinurie6Kq (186:124)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 5 * fem),
                                          child: Text(
                                            'Protéinurie',
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
                                          '12 mg',
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame48TJo (186:133)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 36 * fem),
                                          width: double.infinity,
                                          height: 20 * fem,
                                          decoration: BoxDecoration(
                                            color: Color(0x1908d635),
                                            borderRadius:
                                                BorderRadius.circular(4 * fem),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Normal',
                                              style: safeGoogleFont(
                                                'Roboto',
                                                fontSize: 7 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height:
                                                    2.2857142857 * ffem / fem,
                                                color: Color(0xff03d932),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          // h00XZZ (186:128)
                                          '12h00',
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ), // frame224vaK (299:635)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
