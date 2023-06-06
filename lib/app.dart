import 'package:flutter/material.dart';

import 'app/views/main_screen.dart';

class Sa3edneyApp extends StatelessWidget {
  const Sa3edneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sa3edney',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.white,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      locale: const Locale("ar"),
      home: const MainScreen(),
    );
  }
}
