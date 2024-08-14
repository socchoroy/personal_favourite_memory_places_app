import 'package:favourite_place_app/model/place.dart';
import 'package:flutter/material.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({required this.place, super.key});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(place.title),
      ),
    );
  }
}
