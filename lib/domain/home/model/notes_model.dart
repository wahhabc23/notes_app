import 'package:hive_flutter/hive_flutter.dart';

part 'notes_model.g.dart';

@HiveType(typeId: 0)
class NotesModel extends HiveObject {
  @HiveField(0)
  final String title;

  @HiveField(1)
  final String description;

  @HiveField(2)
  final DateTime date;

  @HiveField(3)
  int? id;

  NotesModel({
    this.id,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  String toString() {
    return 'title: $title desc:$description date:$date';
  }
}
