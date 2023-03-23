import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_webrtc_app/screens/login_page.dart';
import 'screens/join_screen.dart';
import 'services/signalling.service.dart';
import 'screens/login_page.dart';

void main() {
  // start videoCall app
  runApp(VideoCallApp());
}

class VideoCallApp extends StatelessWidget {
  VideoCallApp({super.key});
  //telnet 192.168.1.26 9000
  // signalling server url
  final String websocketUrl = "http://192.168.1.26:9000/";

  // generate callerID of local user
  final String selfCallerID =
      Random().nextInt(999999).toString().padLeft(6, '0');

  @override
  Widget build(BuildContext context) {
    // init signalling service
    SignallingService.instance.init(
      websocketUrl: websocketUrl,
      selfCallerID: selfCallerID,
    );

    // return material app
    return MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(),
      ),
      themeMode: ThemeMode.dark,
      home: LoginPage(),
    );
  }
}
