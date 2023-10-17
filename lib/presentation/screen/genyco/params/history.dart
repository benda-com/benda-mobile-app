import 'package:flutter/material.dart';
import 'package:benda/presentation/widgets/history_card.dart';
import 'package:benda/utils.dart';

class History extends StatefulWidget {
  final String name;
  const History({
    super.key,
    required this.name,
  });

  @override
  State<History> createState() => _HistoryState(name: name);
}

class _HistoryState extends State<History> {
  final _dateC = TextEditingController();
  final _timeC = TextEditingController();
  final String name;

  _HistoryState({required this.name});

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // iphone13promax2087q (299:638)
            padding:
                EdgeInsets.fromLTRB(21 * fem, 48 * fem, 33 * fem, 195 * fem),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xfff8f9f9),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // historiqueWGo (299:793)
                  margin:
                      EdgeInsets.fromLTRB(12 * fem, 0 * fem, 0 * fem, 6 * fem),
                  child: Text(
                    'Historique ',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 28 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.2857142857 * ffem / fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
                Container(
                  // vivianefokouCfR (299:794)
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 0 * fem, 0 * fem, 40 * fem),
                  child: Text(
                    '$name',
                    style: safeGoogleFont(
                      'Roboto',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      color: Color.fromARGB(255, 157, 155, 155),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                buildUI(context),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => displayTimePicker(context),
                      child: const Text("Rechercher")),
                ),
                SizedBox(
                  height: 15,
                ),
                HistoryCardWidget(),
                SizedBox(
                  height: 10,
                ),
                HistoryCardWidget(),
                SizedBox(
                  height: 10,
                ),
                HistoryCardWidget(),
                SizedBox(
                  height: 10,
                ),
                HistoryCardWidget(),
                SizedBox(
                  height: 10,
                ),
                HistoryCardWidget(),
                SizedBox(
                  height: 10,
                ),
                HistoryCardWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildUI(BuildContext context) {
    double size = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 45,
              width: size / 2.4,
              child: TextFormField(
                controller: _dateC,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xffaeaeae)),
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Date',
                  hintStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
            SizedBox(
              height: 40,
              width: size / 2.4,
              child: ElevatedButton(
                  onPressed: () => displayDatePicker(context),
                  child: const Text("Date")),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: size / 2.4,
              child: TextFormField(
                controller: _timeC,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Color(0xffaeaeae)),
                      borderRadius: BorderRadius.circular(8)),
                  hintText: 'Heure',
                  hintStyle: TextStyle(fontSize: 12),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Container(
              height: 40,
              width: size / 2.4,
              child: ElevatedButton(
                  onPressed: () => displayTimePicker(context),
                  child: const Text("Heure")),
            ),
          ],
        ),
      ],
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
