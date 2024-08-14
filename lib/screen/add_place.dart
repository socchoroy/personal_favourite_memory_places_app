import 'package:favourite_place_app/provider/user_places.dart';
import 'package:favourite_place_app/widgets/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddScreen extends ConsumerStatefulWidget {
  const AddScreen({super.key});

  @override
  ConsumerState<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends ConsumerState<AddScreen> {
  final _titleController = TextEditingController();

  void _savePlaces() {
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty) {
      return;
    } else {
      ref.read(userPlaceProvider.notifier).addPlaces(enteredTitle);
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Places'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  label: Text('title'),
                ),
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.surface),
                controller: _titleController,
              ),
              const SizedBox(
                height: 20,
              ),
              ImageInput(),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                  onPressed: _savePlaces, label: const Text('Add Place'))
            ],
          ),
        ));
  }
}
