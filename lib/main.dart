import 'package:ehub_web/firebase_options.dart';
import 'package:ehub_web/router.dart';
import 'package:ehub_web/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // ユーザーの認証情報をローカルに保存
  await FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
  debugPrint('currentUser: ${FirebaseAuth.instance.currentUser?.email}');

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,
      title: 'Flutter Demo',
      theme: theme,
      darkTheme: theme,
    );
  }
}
