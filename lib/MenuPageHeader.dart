import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          height: 340.0,
          width: double.infinity,
        ),
        Container(
          height: 220.0,
          width: double.infinity,
          margin: EdgeInsets.all(0.0),
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                "https://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/article_thumbnails/quizzes/fast_food_smarts_rmq/650x350_fast_food_smarts_rmq.jpg",
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 170.0,
          left: 15.0,
          right: 15.0,
          child: Material(
            elevation: 15.0,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              height: 170.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: 190.0,
          left: 25.0,
          child: Container(
            width: 110.0,
            height: 120.0,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  "http://creamlife.in/wp-content/uploads/2017/10/IMG_0300-1.jpg",
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 200.0,
          left: 170.0,
          child: Text(
            "Barbeque Nation",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22.5,
                fontWeight: FontWeight.normal),
          ),
        ),
        Positioned(
          top: 235.0,
          left: 170.0,
          child: Text(
            "Connaught Palace , Delhi",
            style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                fontWeight: FontWeight.w300),
          ),
        ),
        Positioned(
          top: 265.0,
          left: 175.0,
          child: Row(
            children: <Widget>[
              Icon(
                Icons.star,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                color: Colors.green,
              ),
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}
