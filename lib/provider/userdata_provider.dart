import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserData {
  static final uid = StateProvider((ref) => '');

  // ログイン中のユーザー情報を取得
  static final currentUserData = StateProvider((ref) {
    return FirebaseAuth.instance.currentUser;
  });

  // ユーザー情報をFirestoreから取得
  static Future<Map<String, dynamic>?> getProfile(String uid) async {
    try {
      DocumentSnapshot documentSnapshot =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      if (documentSnapshot.exists) {
        return documentSnapshot.data() as Map<String, dynamic>?;
      } else {
        // ユーザーデータが取得できなかった場合ログイン画面に戻る
        print('ユーザーデータが取得できませんでした');
      }
    } catch (e) {
      print('Error fetching user profile: $e');
    }
    return null;
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

  // サインアウト
  static void signOut() {
    FirebaseAuth.instance.signOut();
  }
}
