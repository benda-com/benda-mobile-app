import "package:syncfusion_flutter_charts/charts.dart";
import 'package:flutter/material.dart';

class GraphWidget extends StatefulWidget {
  const GraphWidget({super.key});

  @override
  State<GraphWidget> createState() => _GraphWidgetState();
}

class _GraphWidgetState extends State<GraphWidget> {
  List<_ParamData> data = [
    _ParamData('Jan', 35),
    _ParamData('Fev', 28),
    _ParamData('Mars', 34),
    _ParamData('Avril', 32),
    _ParamData('Mai', 40),
    _ParamData('Juin', 20),
    _ParamData('Juil', 34),
    _ParamData('Aout', 15),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //Initialize the chart widget
      SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        // Chart title
        title: ChartTitle(text: 'Tension arterielle'),
        // Enable legend

        // Enable tooltip
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries<_ParamData, String>>[
          LineSeries<_ParamData, String>(
            dataSource: data,
            xValueMapper: (_ParamData values, _) => values.peroid,
            yValueMapper: (_ParamData values, _) => values.values,
            name: 'values',
            // Enable data label
            // dataLabelSettings: DataLabelSettings(isVisible: true),
          )
        ],
      ),
    ]);
  }
}

class _ParamData {
  _ParamData(this.peroid, this.values);

  final String peroid;
  final double values;
}
