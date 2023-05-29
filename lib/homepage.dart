import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? strpt;
  String? imagept;

  String platformInFO() {
    if (Platform.isAndroid == true) {
      imagept = "lib/assets/images/android.png";
      return "Android";
    } else if (Platform.isIOS == true) {
      imagept = "lib/assets/images/ios.png";
      return "iOS";
    } else if (Platform.isMacOS == true) {
      imagept = "lib/assets/images/macos.png";
      return "MacOS";
    } else if (Platform.isLinux == true) {
      imagept = "lib/assets/images/linux.png";
      return "Linux";
    } else if (Platform.isWindows == true) {
      imagept = "lib/assets/images/windows.png";
      return "Windows";
    } else if (kIsWeb == true) {
      imagept = "lib/assets/images/web.png";
      return "WEB";
    } else {
      imagept = "lib/assets/images/unknown.png";
      return 'Unknown';
    }
  }

  @override
  void initState() {
    super.initState();
    strpt = platformInFO();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage(imagept!),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You Are Operating on $strpt',
                style: const TextStyle(
                    fontSize: 45,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ))),
    );
  }
}
