import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mrca/blocs/home_screen_view_model.dart';
import 'package:mrca/firebase_options.dart';
import 'package:mrca/screens/home/home_screen.dart';
import 'package:mrca/service_facade.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  ServiceFacade.registerDefaultService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
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
