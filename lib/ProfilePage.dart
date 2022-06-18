import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text("Benvenuto,\nMario Rossi",
                    style: Theme.of(context).textTheme.displayLarge),
              ),
              SafeArea(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(19),
                        child: QrImage(
                            data:
                                "https://open.spotify.com/track/1BiZIPwNd3yLP9KBoUqMRY?si=PFMMDXeASrS4IfBD3cpQIg"),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
