import 'package:favourite_place_app/provider/user_places.dart';
import 'package:favourite_place_app/screen/add_place.dart';
import 'package:favourite_place_app/widgets/places_list.dart';
import 'package:flutter/material.dart';
import 'package:favourite_place_app/model/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaceScreen extends ConsumerWidget {
  PlaceScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlace = ref.watch(userPlaceProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite-Place'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              AddScreen();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: PlacesList(place: userPlace),
    );
  }
}
