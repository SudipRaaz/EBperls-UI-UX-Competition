import 'package:flutter/material.dart';
import 'package:itmeet/phase3/contact.dart';
import 'package:itmeet/screen/HomePage.dart';
import 'package:itmeet/tabmanager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //provider with the changenotifier for managing tabs
        ChangeNotifierProvider(create: (context) => TabManager()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.light(),
          home: HomePage()),
    );
  }
}
