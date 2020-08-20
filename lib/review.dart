import 'package:demo_trips/components/star.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = 'assets/images/demo.jpg';
  String name = 'Anony';
  String details = '0 review 0 photos';
  String comment = 'There is an amazing place in Sri Lanka';
  double rating = 0;

  Review(this.pathImage, this.name, this.details, this.comment, this.rating);
  @override
  Widget build(BuildContext context) {
    /* User comment */
    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0, top: 10.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 11.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
    /* User Info */
    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0, right: 6.0),
          child: Text(
            details,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 12.0,
              color: Color(0xffa3a5a7),
            ),
          ),
        ),
        Star(rating, 10.0)
      ],
    );
    /* User Name */
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0, bottom: 5.0, top: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 16.0,
        ),
      ),
    );
    /* User Details */
    final userDetails = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment,
      ],
    );
    /* Photo */
    final photo = Container(
      margin: EdgeInsets.only(top: 20, left: 20),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails,
      ],
    );
  }
}
