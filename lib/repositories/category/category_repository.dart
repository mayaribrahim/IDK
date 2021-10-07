// ignore_for_file: override_on_non_overriding_member

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:idk_app/models/category_model.dart';
import 'package:idk_app/repositories/category/base_category_repository.dart';

class CategoryRepository extends BaseCategoryRepository {
  final FirebaseFirestore _firebaseFirestore;

  CategoryRepository({FirebaseFirestore? firebaseFirestore})
      : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Stream<List<Category>> getAllCategories() {
    // ignore: todo
    // TODO: implement getAllCategories
    return _firebaseFirestore
        .collection('categories')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Category.fromsnapshot(doc)).toList();
    });
  }
}
