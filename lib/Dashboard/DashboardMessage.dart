import 'package:flutter/material.dart';

class DashboardMessage extends StatelessWidget {
  const DashboardMessage({
    Key? key,
    required this.name,
    required this.content,
    this.image,
  }) : super(key: key);

  final String name;
  final String content;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(image ?? ""),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          name,
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                content,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
