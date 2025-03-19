import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class DeviceCard extends StatelessWidget {
  const DeviceCard(
      {super.key,
      required this.status,
      required this.datetime,
      required this.deviceID});

  final String status;
  final String datetime;
  final String deviceID;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(221, 211, 211, 211)),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    "images/benda_watch.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: 160,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ID: ${deviceID}",
                          style: safeGoogleFont('Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color.fromARGB(221, 0, 0, 0)),
                        ),
                        Text(
                          status,
                          style: safeGoogleFont('Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Date connexion",
                            style: safeGoogleFont('Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color:
                                    const Color.fromARGB(221, 104, 104, 104)),
                          ),
                          Container(
                            width: 60,
                            child: Text(
                              datetime,
                              textAlign: TextAlign.center,
                              style: safeGoogleFont('Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color:
                                      const Color.fromARGB(221, 104, 104, 104)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
