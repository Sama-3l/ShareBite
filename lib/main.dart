import 'package:flutter/cupertino.dart';
import 'package:sharebite/constants/theme.dart';
import 'package:sharebite/presentation/mainApp.dart';
import 'package:sharebite/presentation/screens/signUp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: MainApp(),
    );
  }
}
