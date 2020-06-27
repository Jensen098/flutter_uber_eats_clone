import 'package:flutter/material.dart';
import '../models/restaurant.dart';

class RestaurantBanner extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantBanner({this.restaurant});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      title: _showRestaurantDetails(),
      background: _showRestaurantImage(),
      titlePadding: EdgeInsets.only(left: 24.0, bottom: 68.0),
    );
  }

  Image _showRestaurantImage() {
    return Image.asset(
      'assets/${restaurant.imageFile}',
      fit: BoxFit.fitWidth,
      alignment: Alignment.topCenter,
    );
  }

  Widget _showRestaurantDetails() {
    return Container(
      height: 48.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Text(restaurant.name),
          ),
          Expanded(
            child: Text(
              '${restaurant.tags}\n${restaurant.details}',
              style: TextStyle(fontSize: 8.0),
            ),
          ),
        ],
      ),
    );
  }
}
