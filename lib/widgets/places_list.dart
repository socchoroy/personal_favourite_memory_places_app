import 'package:favourite_place_app/screen/place_details.dart';
import 'package:flutter/material.dart';
import 'package:favourite_place_app/model/place.dart';

class PlacesList extends StatelessWidget {
  PlacesList({required this.place, super.key});

  List<Place> place;
  @override
  Widget build(BuildContext context) {
    if (place.isEmpty) {
      return Container(
        child: Center(
          child: Text('No Place Added Yet'),
        ),
      );
    }
    return ListView.builder(
      itemCount: place.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            place[index].title,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Theme.of(context).colorScheme.surface),
          ),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlaceDetails(
                  place: place[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
