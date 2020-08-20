import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String descriptionText =
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.\n\nIt was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.';
  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );
    final titleStarts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            'Dwili Ella',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star,
            star,
          ],
        ),
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
