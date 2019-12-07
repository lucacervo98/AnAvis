import 'package:an_avis/views/schermata_scelta_data.dart';
import "package:flutter/material.dart";

class PulsanteMese extends StatelessWidget {
  const PulsanteMese({
    @required this.meseTag,
    @required this.meseIntero,
  });

  final String meseTag;
  final String meseIntero;

  void _navigateToRoute(String meseIntero, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SchermataSceltaData(meseIntero)));
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        meseTag,
        style: TextStyle(
          fontFamily: "Roboto",
          fontSize: 21,
        ),
      ),
      textColor: Colors.white,
      color: Colors.blue[900],
      onPressed: () {
        _navigateToRoute(meseIntero, context);
      },
    );
  }
}