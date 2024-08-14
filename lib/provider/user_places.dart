import 'package:favourite_place_app/model/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotfier extends StateNotifier<List<Place>> {
  UserPlacesNotfier() : super(const []);
  void addPlaces(String title) {
    final newPlaces = Place(title: title);

    state = [newPlaces, ...state];
  }
}

final userPlaceProvider = StateNotifierProvider<UserPlacesNotfier, List<Place>>(
  (ref) => UserPlacesNotfier(),
);
