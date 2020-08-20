import 'package:demo_trips/review.dart';
import 'package:flutter/material.dart';

class ReviewLis extends StatelessWidget {
  const ReviewLis({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review('assets/images/demo.jpg', 'Varuma Yasas', '1 review 5 photos',
            'There is an amazing place in Sri Lanka', 4.5),
        Review('assets/images/harley.jpg', 'Varuma Yasas', '1 review 5 photos',
            'There is an amazing place in Sri Lanka', 4.5),
        Review('assets/images/demo.jpg', 'Varuma Yasas', '1 review 5 photos',
            'There is an amazing place in Sri Lanka', 3.5),
      ],
    );
  }
}
