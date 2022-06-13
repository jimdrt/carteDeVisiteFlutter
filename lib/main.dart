import 'package:flutter/material.dart';
import 'screens/visit_card.dart';


// import 'screens/details.dart';


// Function servant à lancer l'application se trouvant dans la class MyApp()
void main() => runApp(const MyApp());

// Extends signifie en langage simplifié : copié, ici extends copie toutes les données de la class StatelessWidget()
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Chaque Widget build() doit contenir un return, ici on return le squelette de l'application
    return const MaterialApp(
      title: 'Ma carte de visite',
      //J'appelle ma class VisitCard() dans 'screens/visit_card.dart'
      home: VisitCard(),
    );
    
  }
}