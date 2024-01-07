import 'package:cloud_firestore/cloud_firestore.dart';

class Pet {
  final String? age;
  final String? name;
  final String? height;
  final String id;
  final String? weight;
  final String? description;
  Pet({
    this.age,
    required this.name,
    this.height,
    required this.id,
    this.weight,
    this.description,
  });

  factory Pet.fromFirestore(DocumentSnapshot<Map<String, dynamic>> snapshot,
      [SnapshotOptions? options]) {
    final data = snapshot.data()!;
    return Pet(
      age: data['age'],
      name: data['name'],
      height: data['height'],
      id: data['id'],
      weight: data['weight'],
      description: data['description'],
    );
  }

  Map<String, Object?> toFirestore() {
    return {
      "age": age,
      "name": name,
      "height": height,
      "id": id,
      "weight": weight,
      "description": description,
      
    };
  }
}