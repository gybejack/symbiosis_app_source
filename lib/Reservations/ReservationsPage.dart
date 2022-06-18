import 'package:flutter/material.dart';
import 'ActivityCard.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: ListView(
        children: const [
          ActivityCard(
            name: "Aula Studio",
            lastRemaining: true,
            description:
                "Prenota un posto riservato nell'aula studio presso la biblioteca. ",
            imagePath: 'images/aulastudio.png',
          ),
          ActivityCard(
            name: "Bar",
            lastRemaining: false,
            description: "Leggi il menù o prenota un tavolo al bar",
            imagePath: 'images/bar.png',
          ),
          ActivityCard(
            name: "Palestra",
            lastRemaining: false,
            description: "Prenota un ingresso in palestra",
            imagePath: 'images/palestra.png',
          ),
        ],
      ),
    );
  }
}
