import 'package:flutter/material.dart';
import 'DashboardMessage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView(
          children: const [
            DashboardMessage(
              name: "Federico Bianchi",
              content: "Cercasi ripetizioni di scienza delle costruzioni...",
              image: 'images/fede.png',
            ),
            DashboardMessage(
              name: "Giovanni Verdi",
              content: "Offro lezioni di chitarra",
              image: 'images/giova.png',
            ),
            DashboardMessage(
              name: "Vittorio Rossi",
              content: "Vendo macchina fotografica",
              image: 'images/vitto.png',
            ),
          ],
        ),
      ),
    );
  }
}
