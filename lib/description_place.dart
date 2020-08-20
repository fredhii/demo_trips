import 'package:demo_trips/components/star.dart';
import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double rating;
  String descriptionText;

  DescriptionPlace(this.namePlace, this.rating, this.descriptionText);
  @override
  Widget build(BuildContext context) {
    /* Title description place */
    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 200.0,
            left: 20.0,
            right: 15.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: 'Lato',
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Star(
          rating,
          20.0,
          margintop: 204.0,
        )
      ],
    );
    final description = Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text(
        descriptionText,
        style: TextStyle(
          fontSize: 10.0,
          fontWeight: FontWeight.normal,
          color: Color(0xFF56575a),
          fontFamily: 'Lato',
        ),
        textAlign: TextAlign.left,
      ),
    );
    return Column(
      children: <Widget>[
        titleStarts,
        description,
      ],
    );
  }
}
