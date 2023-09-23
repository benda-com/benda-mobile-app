import 'package:benda/presentation/widgets/device_card.dart';
import 'package:benda/presentation/widgets/parameter_card.dart';
import 'package:flutter/material.dart';
import 'package:benda/utils.dart';

class DeviceHome extends StatefulWidget {
  const DeviceHome({super.key});

  @override
  State<DeviceHome> createState() => _DeviceHomeState();
}

class _DeviceHomeState extends State<DeviceHome> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            DeviceCard(
                status: "Connecter",
                datetime: "15-09-2023 21:43",
                deviceID: "1234569"),
            SizedBox(
              height: 20,
            ),
            DeviceCard(
                status: "Connecter",
                datetime: "15-09-2023 21:43",
                deviceID: "1234569"),
            SizedBox(
              height: 20,
            ),
            DeviceCard(
                status: "Connecter",
                datetime: "15-09-2023 21:43",
                deviceID: "1234569"),
            SizedBox(
              height: 20,
            ),
            DeviceCard(
                status: "Connecter",
                datetime: "15-09-2023 21:43",
                deviceID: "1234569")
          ],
        ),
      ),
    );
  }
}
