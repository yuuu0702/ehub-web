import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as img;

class UserData {
  static final uid = StateProvider((ref) => '');

  /// ログイン中のユーザー情報を取得
  static final currentUserData = StateProvider((ref) {
    return FirebaseAuth.instance.currentUser;
  });

  /// ユーザー情報をFirestoreから取得
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

  /// ユーザー情報をFirestoreに保存
  static Future<void> setProfile(uid, data) async {
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(data)
        .then((value) => print('User Profile Added'))
        .catchError((error) => print('Failed to add user profile: $error'));
  }

  /// プロフィール画像をアップロード
  static Future uploadImageToFirebaseStorage(
      Uint8List imageData, String uid) async {
    try {
      // 画像データをImageオブジェクトにデコード
      img.Image? image = img.decodeImage(imageData);

      // 画像を低解像度にリサイズ
      img.Image resizedImage = img.copyResize(image!, width: 300);

      // 画像をUint8Listに再エンコード
      Uint8List resizedImageData =
          Uint8List.fromList(img.encodeJpg(resizedImage));

      // アップロード用の一意なファイル名を作成
      String fileName = DateTime.now().millisecondsSinceEpoch.toString();

      // ファイルの場所への参照を作成
      Reference ref =
          FirebaseStorage.instance.ref().child('users/$uid/photos/$fileName');

      print('Uploading image...');

      // リサイズされた画像データをアップロードしてURLを取得
      final url =
          await (await ref.putData(resizedImageData)).ref.getDownloadURL();
      print('Uploaded image URL: $url');
      final photoData = {'photoURL': url, 'path': 'profilePhoto/$fileName'};

      print('Image uploaded successfully');

      return photoData;
    } catch (e) {
      print('Failed to upload image: $e');
    }
  }

  /// プロフィールが設定されているかの確認
  static Future<bool> isProfileSet(String uid) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) return false;
    try {
      final doc =
          await FirebaseFirestore.instance.collection('users').doc(uid).get();
      return doc.exists;
    } catch (e) {
      print('Error fetching user profile: $e');
      return false;
    }
  }

  /// サインアウト
  static void signOut() {
    FirebaseAuth.instance.signOut();
  }
}
