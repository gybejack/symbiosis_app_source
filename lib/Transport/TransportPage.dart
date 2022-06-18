import 'package:flutter/material.dart';

class TransportPage extends StatelessWidget {
  const TransportPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        children: const [
          TransportCard(
              title: "Bike Sharing",
              credit: "12€",
              actionText: "Noleggia bici",
              imagePath: "images/bike.png"),
          TransportCard(
              title: "Fermate Autobus",
              actionText: "Consulta orari",
              imagePath: "images/bus.png"),
        ],
      ),
    );
  }
}

class TransportCard extends StatelessWidget {
  const TransportCard({
    Key? key,
    required this.title,
    this.credit,
    required this.actionText,
    required this.imagePath,
  }) : super(key: key);

  final String title;
  final String? credit;
  final String actionText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 18),
      child: Card(
        elevation: 10,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Text(
              title,
              style: const TextStyle(fontSize: 28),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  credit != null ? "Credito: $credit" : "",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    actionText,
                    style: const TextStyle(
                        color: Color(0xff808385),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
