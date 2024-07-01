import 'package:ehub_web/page/create_profile_page.dart';
import 'package:ehub_web/page/first_page.dart';
import 'package:ehub_web/page/home_page.dart';
import 'package:ehub_web/page/login_page.dart';
import 'package:ehub_web/page/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  // アプリが起動した時
  initialLocation: '/',
  // パスと画面の組み合わせ
  routes: [
    GoRoute(
      path: '/',
      name: 'first',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const FirstPage(),
        );
      },
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const LoginPage(),
        );
      },
    ),
    GoRoute(
      path: '/signup',
      name: 'signup',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const SignUpPage(),
        );
      },
    ),
    GoRoute(
      path: '/create-profile',
      name: 'create-profile',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: CreateProfilePage(state.extra as String),
        );
      },
    ),
    // ex) アカウント画面
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const HomePage(),
        );
      },
    ),
  ],
  // 遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
