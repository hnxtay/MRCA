import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mrca/firebase_options.dart';
import 'package:mrca/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

import 'blocs/home_screen_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
          child: const HomeScreen(),
          create: (context) {
            return HomeScreenViewModel();
          }),
    );
  }
}
