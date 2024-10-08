import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:true_gym/data/repository/exersiese_repo.dart';
import 'package:true_gym/data/web_ser/exersieses_calories.dart';
import 'package:true_gym/firebase_options.dart';
import 'package:true_gym/initial.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  ExersieseRepository(ExersiesesWebService()).getExersieses(70, "jump", 30);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'True Gym',
      debugShowCheckedModeBanner: false,
      home: InitialPage(),
    );
  }
}
