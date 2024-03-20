import "package:syncfusion_flutter_charts/charts.dart";
import 'package:flutter/material.dart';
import "package:intl/intl.dart";
import "dart:async";

class GraphProteinerieWidget extends StatefulWidget {
  const GraphProteinerieWidget(
      {super.key,
      required this.graphName,
      required this.selectedIndex,
      required this.formattedDatetime,
      required this.freqCard});

  final String graphName;
  final int selectedIndex;
  final String formattedDatetime;
  final double? freqCard;
  @override
  State<GraphProteinerieWidget> createState() => _GraphProteinerieWidgetState();
}

class _GraphProteinerieWidgetState extends State<GraphProteinerieWidget> {
  late List<ParamData> _chartData;
  late ZoomPanBehavior _zoomPanBehavior;
  late TooltipBehavior _tooltipBehavior;
  late ChartSeriesController _chartSeriesController;
  Timer? timer;
  int timeM = 00;
  int timeH = 21;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    timer = Timer.periodic(const Duration(seconds: 5), updateDataSource);
    _zoomPanBehavior = ZoomPanBehavior(
      enablePinching: true,
      enableDoubleTapZooming: true,
      enablePanning: true,
      zoomMode: ZoomMode.x,
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: widget.graphName),

      tooltipBehavior: _tooltipBehavior,
      zoomPanBehavior: _zoomPanBehavior,
      series: <ChartSeries>[
        LineSeries<ParamData, DateTime>(
            onRendererCreated: (ChartSeriesController controller) {
              _chartSeriesController = controller;
            },
            name: widget.graphName,
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
      // primaryYAxis: NumericAxis(
      //   minimum: 70,
      //   maximum: 130,
      // ),
    );
  }

  void updateDataSource(Timer timer) {
    DateTime dateTime;
    String formattedDatetime = widget.formattedDatetime;
    var yearF = int.parse(formattedDatetime.split(" ")[0].split("-")[2]);
    var monthF = int.parse(formattedDatetime.split(" ")[0].split("-")[1]);
    var dayF = int.parse(formattedDatetime.split(" ")[0].split("-")[0]);
    var hourF = int.parse(formattedDatetime.split(" ")[1].split(":")[0]);
    var minuteF = int.parse(formattedDatetime.split(" ")[1].split(":")[1]);
    var secondF = int.parse(formattedDatetime.split(" ")[1].split(":")[2]);

    dateTime = DateTime(yearF, monthF, dayF, hourF, minuteF, secondF);
    _chartData.add(ParamData(peroid: dateTime, value: widget.freqCard));

    _chartSeriesController.updateDataSource(
        addedDataIndex: _chartData.length - 1, removedDataIndex: 0);
  }

  List<ParamData> getChartData() {
    return <ParamData>[];
  }
}

class ParamData {
  ParamData({this.peroid, this.value});

  final DateTime? peroid;
  final double? value;
}
