import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://github.com/jimdrt');

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff052555),
      appBar: AppBar(
        title: const Text("En savoir Plus"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/avatar.jpg'),
                ),
                const SizedBox(height: 20.0),
                const Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Passionné par le développement Web depuis maintenant 2 ans, j'ai décidé de m'orienté vers le mobile avec Flutter, qui est un outils formidable! ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'JosefinSans',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _launchUrl,
                  child: const Text('Voir mon GitHub'),
                ),
              ]),
        ),
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}
