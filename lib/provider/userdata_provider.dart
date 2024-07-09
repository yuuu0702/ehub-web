import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserData {
  static final uid = StateProvider((ref) => '');

  // ユーザー情報をFirestoreから取得
  static void getProfile(uid) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        print('Document data: ${documentSnapshot.data()}');
      } else {
        print('Document does not exist on the database');
      }
    });
  }

  // ユーザー情報をFirestoreに保存
  static void setProfile(uid, data) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(data)
        .then((value) => print('User Profile Added'))
        .catchError((error) => print('Failed to add user profile: $error'));
  }
}
