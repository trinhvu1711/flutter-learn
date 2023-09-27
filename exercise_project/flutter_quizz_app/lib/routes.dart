import 'package:flutter_quizz_app/about/about.dart';
import 'package:flutter_quizz_app/profile/profile.dart';
import 'package:flutter_quizz_app/login/login.dart';
import 'package:flutter_quizz_app/topics/topics.dart';
import 'package:flutter_quizz_app/home/home.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
