import 'package:flutter/foundation.dart';

class MenuItem {
  final String name;
  final String description;
  final double price;
  final String imageFile;

  const MenuItem({
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.imageFile,
  });
}
