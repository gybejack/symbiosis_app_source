import 'package:flutter/material.dart';
import 'package:symbiosis_app/Impluvium/HistoryChart.dart';
import 'package:symbiosis_app/Impluvium/Water.dart';

class ImpluviumPage extends StatelessWidget {
  const ImpluviumPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Center(
              child: SizedBox(
                height: 200,
                child: ImpluviumAnimation(),
                width: 200,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Storico Acque recuperate",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  height: 250,
                  child: SimpleLineChart.withSampleData(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
