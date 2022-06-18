import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:symbiosis_app/Impluvium/Water.dart';

import 'Dashboard/DashboardPage.dart';
import 'Impluvium/ImpluviumPage.dart';
import 'OnlineMarket/OnlineMarketPage.dart';
import 'ProfilePage.dart';
import 'Recycling/RecyclingPage.dart';
import 'Reservations/ReservationsPage.dart';
import 'Transport/TransportPage.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Symbiosis',
      theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateProperty.all<Color>(const Color(0xFF9ab6c0)),
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFcbe8f3)))),
          primaryColor: const Color(0xFFcbe8f3),
          fontFamily: "AcuminVariableConcept",
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  color: Colors.black,
                  fontSize: 50,
                  fontFamily: "AcuminVariableConcept"))),
      home: const MyHomePage(),
    );
  }
}

class MyTabPage {
  final String title;
  final Widget content;
  final IconData icon;

  MyTabPage(this.title, this.content, this.icon);
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selected = 0;

  final List<MyTabPage> _pages = [
    MyTabPage("", const ProfilePage(), Icons.person),
    MyTabPage("Bacheca", const DashboardPage(), Icons.newspaper),
    MyTabPage("Prenotazioni", const ReservationPage(), Icons.menu_book),
    MyTabPage("Impluvium", const ImpluviumPage(), Icons.water_drop_outlined),
    MyTabPage(
        "Trasporti", const TransportPage(), Icons.departure_board_outlined),
    MyTabPage("Spesa online", const OnlineMarketPage(), Icons.storefront),
    MyTabPage("Rifiuti", const RecyclingPage(), Icons.recycling)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            "images/avatar.png",
          )
        ],
        title: Text(_pages[_selected].title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: "AcuminVariableConcept")),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromRGBO(237, 242, 251, 1), Colors.white],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight)),
          child: _pages[_selected].content),
      bottomNavigationBar: StylishBottomBar(
        elevation: 50,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
        items: _pages
            .map((page) => AnimatedBarItems(
                icon: Icon(page.icon),
                title: const Text('•'),
                selectedColor: Colors.black,
                backgroundColor: Colors.grey))
            .toList(),
        currentIndex: _selected,
        barAnimation: BarAnimation.blink,
        iconStyle: IconStyle.animated,
        onTap: (i) => {setState(() => _selected = i!)},
      ),
    );
  }
}
