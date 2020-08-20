import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  double rating;
  double startSize;
  double margintop;

  Star(this.rating, this.startSize, {this.margintop = 0});

  /* create stars base on rating */
  Widget makeStar(rate) {
    var icon;

    if (rate == 0.5) {
      icon = Icons.star_half;
    } else if (rate < 0.5) {
      icon = Icons.star_border;
    } else {
      icon = Icons.star;
    }

    return Container(
      margin: EdgeInsets.only(
        top: margintop,
        right: 3.0,
      ),
      child: Icon(
        icon,
        color: Color(0xFFf2C611),
        size: startSize,
      ),
    );
  }

  /* Create star list */
  Widget starList(rate) {
    List<Widget> listOfStars = [];

    for (int i = 0; i < 5; i++) {
      listOfStars.add(makeStar(rate));
      rate--;
    }

    return Row(
      children: listOfStars,
    );
  }

  @override
  Widget build(BuildContext context) {
    return starList(rating);
  }
}
