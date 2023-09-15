import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:flutter/material.dart';

class DeviceHome extends StatefulWidget {
  const DeviceHome({super.key});

  @override
  State<DeviceHome> createState() => _DeviceHomeState();
}

class _DeviceHomeState extends State<DeviceHome> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 2.6,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset(
                      "images/ellipse-15-bg.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
