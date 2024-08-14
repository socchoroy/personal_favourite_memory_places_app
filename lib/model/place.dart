import 'package:uuid/uuid.dart';

class Place {
  Place({required this.title}) : uid = const Uuid().v4();
  final String uid;
  final String title;
}
