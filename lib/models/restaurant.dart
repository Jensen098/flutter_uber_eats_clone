import 'package:flutter/foundation.dart';

class Restaurant {
  final String name;
  final String tags;
  final String details;
  final String imageFile;

  const Restaurant({
    @required this.name,
    @required this.tags,
    @required this.details,
    @required this.imageFile,
  });
}
