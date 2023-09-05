import 'package:benda/presentation/widgets/search_bar.dart';
import 'package:benda/utils.dart';
import 'package:flutter/material.dart';

class HomeGenyco extends StatefulWidget {
  const HomeGenyco({super.key});

  @override
  State<HomeGenyco> createState() => _HomeGenycoState();
}

class _HomeGenycoState extends State<HomeGenyco> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Color.fromARGB(255, 92, 91, 91),
            )),
        backgroundColor: Color(0xfff8f9f9),
        elevation: 0,
        title: Image.asset(
          width: 100,
          'images/test2-1.png',
          fit: BoxFit.cover,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Color.fromARGB(255, 92, 91, 91),
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(leading: Icon(Icons.home), title: Text("Accueil"))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // iphone13promax6D5y (149:10)
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff8f9f9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogrouphkapX6f (TjxJARMfVtN1wYYHGShKaP)
                  padding: EdgeInsets.fromLTRB(
                      24 * fem, 48 * fem, 17 * fem, 5 * fem),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rectangle9cvj (155:52)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 7 * fem, 20 * fem),
                        width: 358 * fem,
                        height: 123 * fem,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8 * fem),
                            topRight: Radius.circular(8 * fem),
                          ),
                          child: Image.asset(
                            'images/rectangle-9.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        // listedespatientsiD5 (155:50)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 142 * fem, 9 * fem),
                        child: Text(
                          'Liste des patients ',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 28 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2857142857 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      SearchBarWidget(fem: fem, ffem: ffem),
                      Container(
                        // filtrestvB (155:51)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 280 * fem, 5 * fem),
                        child: Text(
                          'Filtres',
                          style: safeGoogleFont(
                            'Roboto',
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3333333333 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // frame251ju (149:248)
                        margin: EdgeInsets.fromLTRB(
                            32.13 * fem, 0 * fem, 39.13 * fem, 17 * fem),
                        width: double.infinity,
                        height: 23 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame198Jj (149:249)
                              padding: EdgeInsets.fromLTRB(
                                  14.13 * fem, 4 * fem, 14.13 * fem, 4 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x330013c6),
                                borderRadius: BorderRadius.circular(8 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
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
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 2 * fem, 0 * fem),
                                    child: Text(
                                      'Tous',
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
                                      borderRadius:
                                          BorderRadius.circular(7.5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '30',
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
                            ),
                            SizedBox(
                              width: 66 * fem,
                            ),
                            Container(
                              // frame18zET (149:255)
                              padding: EdgeInsets.fromLTRB(
                                  10.13 * fem, 4 * fem, 10.13 * fem, 4 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x3308d635),
                                borderRadius: BorderRadius.circular(8 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // normalJW3 (149:257)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 2 * fem, 0 * fem),
                                    child: Text(
                                      'Normal',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff009220),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame31Qoy (149:258)
                                    width: 15 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x4c44ff71),
                                      borderRadius:
                                          BorderRadius.circular(7.5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '10',
                                        textAlign: TextAlign.center,
                                        style: safeGoogleFont(
                                          'Inter',
                                          fontSize: 7 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xff098b26),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 66 * fem,
                            ),
                            Container(
                              // frame17VKd (149:261)
                              padding: EdgeInsets.fromLTRB(
                                  8.13 * fem, 4 * fem, 8.13 * fem, 4 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0x33f80e2a),
                                borderRadius: BorderRadius.circular(8 * fem),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // anormalDFd (149:263)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 2 * fem, 0 * fem),
                                    child: Text(
                                      'Anormal',
                                      textAlign: TextAlign.center,
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xfff80e2a),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame33LLF (149:264)
                                    width: 15 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0x33f80e2a),
                                      borderRadius:
                                          BorderRadius.circular(7.5 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '10',
                                        textAlign: TextAlign.center,
                                        style: safeGoogleFont(
                                          'Inter',
                                          fontSize: 7 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2125 * ffem / fem,
                                          color: Color(0xfff80e2a),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame14Duq (149:96)
                        margin: EdgeInsets.fromLTRB(
                            11 * fem, 0 * fem, 17 * fem, 8 * fem),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                10 * fem, 10 * fem, 10 * fem, 12 * fem),
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
                              children: [
                                Container(
                                  // frame10TZH (149:97)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 2 * fem, 194 * fem, 0 * fem),
                                  height: 40 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // ellipse1Phq (149:98)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10 * fem, 0 * fem),
                                        width: 40 * fem,
                                        height: 40 * fem,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20 * fem),
                                          color: Color(0xffd9d9d9),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'images/ellipse-1-bg.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame9t8o (149:99)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 3 * fem, 0 * fem, 3 * fem),
                                        height: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              // vivianefokouCQP (149:100)
                                              'Viviane FOKOU',
                                              style: safeGoogleFont(
                                                'Inter',
                                                fontSize: 8 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: Color(0xff333333),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2 * fem,
                                            ),
                                            Text(
                                              // semaines71Z (149:101)
                                              '24 semaines',
                                              style: safeGoogleFont(
                                                'Inter',
                                                fontSize: 8 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: Color(0xff5c5a5a),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2 * fem,
                                            ),
                                            Text(
                                              // ans2PR (149:102)
                                              '24 ans',
                                              style: safeGoogleFont(
                                                'Inter',
                                                fontSize: 8 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2125 * ffem / fem,
                                                color: Color(0xffb1aeae),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame8NTH (149:104)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 33 * fem),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // normalW3h (149:105)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                        child: Text(
                                          'Normal',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 7 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff08d635),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // ellipse2d8K (149:106)
                                        width: 8 * fem,
                                        height: 8 * fem,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4 * fem),
                                          color: Color(0xff08d635),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // frame15Znf (149:111)
                        margin: EdgeInsets.fromLTRB(
                            11 * fem, 0 * fem, 18 * fem, 8 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 10 * fem, 12 * fem),
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
                          children: [
                            Container(
                              // frame10qEP (149:112)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 176 * fem, 0 * fem),
                              height: 40 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ellipse1MiX (149:113)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                    width: 40 * fem,
                                    height: 40 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      color: Color(0xffd9d9d9),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'images/ellipse-1-bg-K3V.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame9TmZ (149:114)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 3 * fem, 0 * fem, 3 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // aminafatimatouo4j (149:115)
                                          'Amina FATIMATOU',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // semainesvQF (149:116)
                                          '34 semaines',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // ansS7h (149:117)
                                          '23 ans',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xffb1aeae),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame8B5H (149:119)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // anormalv2s (149:120)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                    child: Text(
                                      'Anormal',
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xfff80e2a),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // ellipse2EZM (149:121)
                                    width: 8 * fem,
                                    height: 8 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                      color: Color(0xfff80e2a),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame22NvT (149:154)
                        margin: EdgeInsets.fromLTRB(
                            11 * fem, 0 * fem, 18 * fem, 8 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 10 * fem, 12 * fem),
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
                          children: [
                            Container(
                              // frame10esy (149:155)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 193 * fem, 0 * fem),
                              height: 40 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ellipse1zB9 (149:156)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                    width: 40 * fem,
                                    height: 40 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      color: Color(0xffd9d9d9),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'images/ellipse-1-bg-H91.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame9h5Z (149:157)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 3 * fem, 0 * fem, 3 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // vivianefokouRnF (149:158)
                                          'Viviane FOKOU',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // semainesMfu (149:159)
                                          '24 semaines',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // ansgiB (149:160)
                                          '24 ans',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xffb1aeae),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame82X9 (149:162)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // normalZGB (149:163)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                    child: Text(
                                      'Normal',
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff08d635),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // ellipse2GgP (149:164)
                                    width: 8 * fem,
                                    height: 8 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                      color: Color(0xff08d635),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame15QGo (149:169)
                        margin: EdgeInsets.fromLTRB(
                            11 * fem, 0 * fem, 18 * fem, 8 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 10 * fem, 12 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffadabab)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(4 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame10hFu (149:170)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 193 * fem, 0 * fem),
                              height: 40 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ellipse123H (149:171)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                    width: 40 * fem,
                                    height: 40 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      color: Color(0xffd9d9d9),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'images/ellipse-1-bg-F5q.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame9igo (149:172)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 3 * fem, 0 * fem, 3 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // vivianefokouFgj (149:173)
                                          'Viviane FOKOU',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // semainesB4b (149:174)
                                          '24 semaines',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // anshYj (149:175)
                                          '24 ans',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xffb1aeae),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame83cb (149:177)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // normalPgT (149:178)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                    child: Text(
                                      'Normal',
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff08d635),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // ellipse2X1y (149:179)
                                    width: 8 * fem,
                                    height: 8 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                      color: Color(0xff08d635),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame154nb (149:184)
                        margin: EdgeInsets.fromLTRB(
                            11 * fem, 0 * fem, 18 * fem, 6 * fem),
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 10 * fem, 12 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffadabab)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(4 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame10ZUT (149:185)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 193 * fem, 0 * fem),
                              height: 40 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // ellipse1Vd1 (149:186)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                    width: 40 * fem,
                                    height: 40 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                      color: Color(0xffd9d9d9),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                          'images/ellipse-1-bg-dxB.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // frame9PyH (149:187)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 3 * fem, 0 * fem, 3 * fem),
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          // vivianefokouLNj (149:188)
                                          'Viviane FOKOU',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff333333),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // semainesTTM (149:189)
                                          '24 semaines',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xff5c5a5a),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 2 * fem,
                                        ),
                                        Text(
                                          // ansP67 (149:190)
                                          '24 ans',
                                          style: safeGoogleFont(
                                            'Inter',
                                            fontSize: 8 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2125 * ffem / fem,
                                            color: Color(0xffb1aeae),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame8KkT (149:192)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 33 * fem),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // normal4i3 (149:193)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                    child: Text(
                                      'Normal',
                                      style: safeGoogleFont(
                                        'Inter',
                                        fontSize: 7 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff08d635),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // ellipse2Q1D (149:194)
                                    width: 8 * fem,
                                    height: 8 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(4 * fem),
                                      color: Color(0xff08d635),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // autogroupvk7yYNK (TjxHoRxdzFKzRWL4dKvk7y)
                        margin: EdgeInsets.fromLTRB(
                            122 * fem, 0 * fem, 139 * fem, 0 * fem),
                        width: double.infinity,
                        height: 30 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // frame42TVH (163:73)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 15 * fem, 0 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  7 * fem, 7 * fem, 8 * fem, 8 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                // uploadN6T (163:67)
                                child: SizedBox(
                                  width: 15 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'images/upload.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // Vgs (163:69)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 7 * fem, 0 * fem),
                              child: Text(
                                '1',
                                style: safeGoogleFont(
                                  'Roboto',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Container(
                              // pUF (163:70)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 10 * fem, 0 * fem),
                              child: Text(
                                '2',
                                style: safeGoogleFont(
                                  'Roboto',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286 * ffem / fem,
                                  color: Color(0xff5c5a5a),
                                ),
                              ),
                            ),
                            Container(
                              // LxP (163:71)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 2 * fem, 10 * fem, 0 * fem),
                              child: Text(
                                '3',
                                style: safeGoogleFont(
                                  'Roboto',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286 * ffem / fem,
                                  color: Color(0xff5c5a5a),
                                ),
                              ),
                            ),
                            Container(
                              // frame43fUs (163:75)
                              padding: EdgeInsets.fromLTRB(
                                  7 * fem, 7 * fem, 8 * fem, 8 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffd9d9d9),
                                borderRadius: BorderRadius.circular(15 * fem),
                              ),
                              child: Center(
                                // uploadnZV (163:68)
                                child: SizedBox(
                                  width: 15 * fem,
                                  height: 15 * fem,
                                  child: Image.asset(
                                    'images/upload-J3R.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // frame408NT (163:63)
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 30 * fem, 0 * fem, 30 * fem),
                  width: double.infinity,
                  height: 129 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xfff9f9fa),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        // frame39pm5 (163:62)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              47.25 * fem, 11 * fem, 47.25 * fem, 10 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // settingsszF (155:39)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 6 * fem),
                                width: 22 * fem,
                                height: 22 * fem,
                                child: Image.asset(
                                  'images/settings.png',
                                  width: 22 * fem,
                                  height: 22 * fem,
                                ),
                              ),
                              Text(
                                // paramtremZq (163:61)
                                'Paramètre',
                                style: safeGoogleFont(
                                  'Roboto',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286 * ffem / fem,
                                  color: Color(0xff5c5b5b),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      Container(
                        // frame41gRu (163:66)
                        padding: EdgeInsets.fromLTRB(
                            20 * fem, 13 * fem, 20 * fem, 10 * fem),
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x190072c5),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // homeoutlinenjq (149:229)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 8 * fem),
                              width: 18 * fem,
                              height: 18 * fem,
                              child: Image.asset(
                                'images/homeoutline-VnP.png',
                                width: 18 * fem,
                                height: 18 * fem,
                              ),
                            ),
                            Text(
                              // accueilWQw (163:57)
                              'Accueil',
                              style: safeGoogleFont(
                                'Roboto',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                color: Color(0xff3c50ff),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10 * fem,
                      ),
                      TextButton(
                        // frame382PH (163:60)
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              52.75 * fem, 14 * fem, 52.75 * fem, 12 * fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // shareXaw (149:273)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                width: 16 * fem,
                                height: 16 * fem,
                                child: Image.asset(
                                  'images/share.png',
                                  width: 16 * fem,
                                  height: 16 * fem,
                                ),
                              ),
                              Text(
                                // partagerefZ (163:59)
                                'Partager',
                                style: safeGoogleFont(
                                  'Roboto',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.4285714286 * ffem / fem,
                                  color: Color(0xff5c5b5b),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
