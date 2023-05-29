import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const PlatformOS());
}

class PlatformOS extends StatelessWidget {
  const PlatformOS({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Platform OS",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
