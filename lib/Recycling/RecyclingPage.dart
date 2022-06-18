import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:symbiosis_app/Impluvium/HistoryChart.dart';

class RecyclingPage extends StatelessWidget {
  const RecyclingPage({
    Key? key,
  }) : super(key: key);

  static const Map<String, double> dataMap = {
    "Plastica": 5,
    "Vetro": 3,
    "Carta": 2,
    "Organico": 2,
    "Indifferenziata": 1
  };
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Sblocca cassonetto",
                      style: TextStyle(fontSize: 25),
                    ),
                    IconButton(onPressed: () {}, icon: Icon(Icons.qr_code))
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 10,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, left: 12),
                child: Text(
                  "Statistiche",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Divider(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15),
                child: PieChart(
                  dataMap: dataMap,
                ),
              ),
              Divider(),
              SizedBox(height: 250, child: SimpleLineChart.withSampleDataV2())
            ]),
          )
        ],
      ),
    );
  }
}
