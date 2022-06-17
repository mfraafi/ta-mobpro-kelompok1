import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Hero {
  static Future addHero(name, description, image, role) {
    return FirebaseFirestore.instance.collection('heroes').add({
      'name': name,
      'description': description,
      'image': image,
      'role': role,
    });
  }
}
