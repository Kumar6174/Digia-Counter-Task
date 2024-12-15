import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/counter_provider.dart';
import 'providers/theme_provider.dart';
import 'screens/counter_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
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
      theme: ThemeData(
        brightness:
        themeProvider.isDarkMode ? Brightness.dark : Brightness.light,
      ),
      home: const CounterPage(),
    );
  }
}
