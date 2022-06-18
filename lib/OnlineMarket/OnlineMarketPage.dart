import 'package:flutter/material.dart';

class OnlineMarketPage extends StatelessWidget {
  const OnlineMarketPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.6),
        children: const [
          MarketItem(
            name: "Fragole",
            km: "21",
            price: "3,50 €/kg",
            imagePath: "images/fragole.png",
          ),
          MarketItem(
            name: "Zucchine",
            km: "46",
            price: "3,10 €/kg",
            imagePath: "images/zucchine.png",
          ),
          MarketItem(
            name: "Melanzane",
            km: "35",
            price: "3,30 €/kg",
            imagePath: "images/melanzane.png",
          ),
          MarketItem(
            name: "Patate",
            km: "21",
            price: "2,15 €/kg",
            imagePath: "images/patate.png",
          ),
          MarketItem(
            name: "Fragole",
            km: "21",
            price: "3,50 €/kg",
            imagePath: "images/fragole.png",
          ),
          MarketItem(
            name: "Zucchine",
            km: "46",
            price: "3,10 €/kg",
            imagePath: "images/zucchine.png",
          ),
          MarketItem(
            name: "Melanzane",
            km: "35",
            price: "3,30 €/kg",
            imagePath: "images/melanzane.png",
          ),
          MarketItem(
            name: "Patate",
            km: "21",
            price: "2,15 €/kg",
            imagePath: "images/patate.png",
          ),
        ],
      ),
    );
  }
}

class MarketItem extends StatelessWidget {
  const MarketItem({
    Key? key,
    required this.name,
    required this.km,
    required this.price,
    required this.imagePath,
  }) : super(key: key);
  final String name;
  final String km;
  final String price;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 60,
                ),
              ),
              Text(
                name,
                style: const TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Km: " + km,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFB7D171)),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
