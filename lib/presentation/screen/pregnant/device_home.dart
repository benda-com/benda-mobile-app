import 'package:benda/presentation/widgets/device_card.dart';
import 'package:flutter/material.dart';

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
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            DeviceCard(
                status: "Connecté",
                datetime: "15-09-2023 21:43",
                deviceID: "1234569"),
          ],
        ),
      ),
    );
  }
}
