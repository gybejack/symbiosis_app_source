import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    Key? key,
    required this.name,
    required this.description,
    this.imagePath,
    this.ctaName,
    required this.lastRemaining,
  }) : super(key: key);
  final String name;
  final String description;
  final String? ctaName;
  final bool lastRemaining;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 12),
      child: Card(
        elevation: 10,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    imagePath ?? "",
                    height: 120,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Text(
                      description,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 4,
                      style: TextStyle(fontSize: 18),
                    )
                  ]),
                ))
              ],
            ),
          ),
          const Divider(
            height: 2,
            thickness: 1,
            indent: 2,
            endIndent: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  lastRemaining ? "Posti in esaurimento" : "",
                  style: const TextStyle(
                      color: Colors.amber, fontWeight: FontWeight.w900),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Prenota",
                      style: TextStyle(
                          color: Color(0xff808385),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
