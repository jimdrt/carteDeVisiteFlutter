import 'package:flutter/material.dart';
 import 'details.dart';

class VisitCard extends StatelessWidget {
  const VisitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff052555),
        appBar: AppBar(
          title: const Text('Ma carte de visite'),
          backgroundColor: Colors.transparent,
          //Gére l'ombrage
          elevation: 0.0,
        ),
        body: Center(
          // CircleAvatar: widget qui permet de mettre une image arrondie
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
                //Alignement verticale
                mainAxisAlignment: MainAxisAlignment.center,
                //children siginifie qu'il y a plusieurs Widgets, il est suivis automatiquement par un tableau
                children:  <Widget>[
                 const CircleAvatar(
                    radius: 70.0,
                    // AssetImage: widget qui permet de chercher une image
                    backgroundImage: AssetImage('assets/avatar.jpg'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Card(
                    color: Colors.transparent,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Jimmy',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 30.0,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Card(
                      color: Colors.transparent,
                      margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                      child: Text(
                        "Développeur mobile Flutter junior en Freelance",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 20.0,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                     onPressed: () {
                      Navigator.push(
                        context, MaterialPageRoute(
                          builder: (BuildContext context){
                            return const Details();
                          }
                         )
                      );
                    },
                    child: const Text(
                      "En savoir plus",
                      style: TextStyle(
                        fontFamily: 'JosefinSans',
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
