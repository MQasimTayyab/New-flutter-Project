import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_proj/splash_screen.dart';

import 'package:device_preview/device_preview.dart';

void main() {
  debugPaintSizeEnabled = false;
  runApp(DevicePreview(
      enabled: false,
      tools: const [
        ...DevicePreview.defaultTools,
      ],
      builder: (context) => const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpleshScreen(),
    );
  }
}
