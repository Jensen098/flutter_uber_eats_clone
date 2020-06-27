import 'package:flutter/material.dart';
import 'package:flutterubereatsclone/models/menu_item.dart';

class MainMenuItem extends StatelessWidget {
  final MenuItem menuItem;

  MainMenuItem({this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      height: 160.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _showItemDetails(),
          _showItemImage(),
        ],
      ),
    );
  }

  Flexible _showItemDetails() {
    return Flexible(
      fit: FlexFit.tight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(menuItem.name),
          SizedBox(height: 8.0),
          Text(menuItem.description),
          SizedBox(height: 8.0),
          Text('\$${menuItem.price}'),
          Text('❦ Vegan')
        ],
      ),
    );
  }

  Image _showItemImage() {
    return Image.asset(
      'assets/${menuItem.imageFile}',
      fit: BoxFit.fill,
    );
  }
}
