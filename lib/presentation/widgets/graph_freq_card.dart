import "package:syncfusion_flutter_charts/charts.dart";
import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import "dart:async";
import "dart:math" as math;

class GraphFreqCardWidget extends StatefulWidget {
  const GraphFreqCardWidget({super.key, required this.graphName});

  final String graphName;
  @override
  State<GraphFreqCardWidget> createState() => _GraphFreqCardWidgetState();
}

class _GraphFreqCardWidgetState extends State<GraphFreqCardWidget> {
  late List<ParamData> _chartData;
  late ZoomPanBehavior _zoomPanBehavior;
  late TooltipBehavior _tooltipBehavior;
  late ChartSeriesController _chartSeriesController;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    Timer.periodic(const Duration(seconds: 1), updateDataSource);
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      enableDoubleTapZooming: true,
      enablePanning: true,
      zoomMode: ZoomMode.x,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SfCartesianChart(
        title: ChartTitle(text: "Frequence cardiaque"),

        tooltipBehavior: _tooltipBehavior,
        zoomPanBehavior: _zoomPanBehavior,
        series: <ChartSeries>[
          LineSeries<ParamData, DateTime>(
              onRendererCreated: (ChartSeriesController controller) {
                _chartSeriesController = controller;
              },
              name: "Frequence cardiaque",
              dataSource: _chartData,
              xValueMapper: (ParamData sales, _) => sales.peroid,
              yValueMapper: (ParamData sales, _) => sales.value,
              // dataLabelSettings: DataLabelSettings(isVisible: true),
              enableTooltip: true),
        ],
        primaryXAxis: DateTimeAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            dateFormat: DateFormat.Hm(),
            intervalType: DateTimeIntervalType.minutes),
        // primaryXAxis: DateTimeAxis(
        //   dateFormat: DateFormat.MMM(),
        // ),
        primaryYAxis: NumericAxis(
          minimum: 70,
          maximum: 130,
        ),
      ),
    );
  }

  int timeM = 00;
  int timeH = 21;
  void updateDataSource(Timer timer) {
    DateTime dateTime;
    if (timeM < 60) {
      dateTime = DateTime(2023, 09, 22, timeH, timeM++, 10);
      _chartData.add(
          ParamData(peroid: dateTime, value: (math.Random().nextInt(60) + 40)));
      _chartData.removeAt(0);
      _chartSeriesController.updateDataSource(
          addedDataIndex: _chartData.length - 1, removedDataIndex: 0);
    } else {
      dateTime = DateTime(2023, 09, 22, timeH++, timeM, 10);
      _chartData.add(
          ParamData(peroid: dateTime, value: (math.Random().nextInt(60) + 30)));
      _chartData.removeAt(0);
      _chartSeriesController.updateDataSource(
          addedDataIndex: _chartData.length - 1, removedDataIndex: 0);
      timeM = 0;
    }
  }

  List<ParamData> getChartData() {
    return <ParamData>[
      ParamData(
        peroid: DateTime(2023, 09, 22, 21, 00, 10),
        value: 98.97,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 20, 30, 10),
        value: 98.41,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 20, 20, 10),
        value: 101.52,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 20, 10, 10),
        value: 96.47,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 20, 00, 10),
        value: 93.13,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 19, 50, 10),
        value: 91.02,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 19, 40, 10),
        value: 96.31,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 19, 30, 10),
        value: 99.86,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 19, 20, 10),
        value: 102.39,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 19, 10, 10),
        value: 101.91,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 19, 00, 10),
        value: 105.93,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 18, 40, 10),
        value: 106,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 18, 30, 10),
        value: 110.42,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 18, 20, 10),
        value: 108.97,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 18, 10, 10),
        value: 108.89,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 18, 10, 10),
        value: 105,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 18, 00, 10),
        value: 93.965,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 17, 50, 10),
        value: 93,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 17, 40, 10),
        value: 92.39,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 17, 30, 10),
        value: 95.87,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 17, 20, 10),
        value: 99.6,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 17, 10, 10),
        value: 97.99,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 17, 00, 10),
        value: 98.69,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 50, 10),
        value: 96,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 40, 10),
        value: 93,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 30, 10),
        value: 95.39,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 20, 10),
        value: 96.75,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 10, 10),
        value: 98.7,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 00, 10),
        value: 98.25,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 16, 00, 10),
        value: 104.41,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 15, 50, 10),
        value: 107.52,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 15, 40, 10),
        value: 108.14,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 15, 30, 10),
        value: 108.86,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 15, 20, 10),
        value: 106.62,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 15, 10, 10),
        value: 107.9,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 15, 00, 10),
        value: 102.65,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 14, 50, 10),
        value: 115.19,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 14, 40, 10),
        value: 111.64,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 14, 30, 10),
        value: 112.71,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 14, 20, 10),
        value: 115.02,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 14, 10, 10),
        value: 117.33,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 14, 00, 10),
        value: 117.1,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 13, 50, 10),
        value: 113.65,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 13, 40, 10),
        value: 110.08,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 13, 30, 10),
        value: 107.71,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 13, 20, 10),
        value: 114.12,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 13, 10, 10),
        value: 111.43,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 13, 0, 10),
        value: 110,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 12, 50, 10),
        value: 113.29,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 12, 40, 10),
        value: 115.8,
      ),
      ParamData(
        peroid: DateTime(2023, 09, 22, 12, 30, 10),
        value: 116.52,
      ),
    ];
  }
}

class ParamData {
  ParamData({this.peroid, this.value});

  final DateTime? peroid;
  final double? value;
}
