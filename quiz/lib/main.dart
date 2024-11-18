import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme.dart';
import 'mainscreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Theme App',
      theme: themeProvider.themeData.copyWith(
        textTheme: themeProvider.themeData.textTheme.apply(
          fontFamily: themeProvider.font,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
