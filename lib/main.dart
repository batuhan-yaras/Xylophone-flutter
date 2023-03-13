import 'package:flutter/material.dart';
import 'package:xylophone_app/product/keyColors.dart';
import 'core/buildKey.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});
  playsound() {}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(acolor: KeyColors.first),
              buildKey(acolor: KeyColors.second),
              buildKey(acolor: KeyColors.third),
              buildKey(acolor: KeyColors.fourth),
              buildKey(acolor: KeyColors.fifth),
              buildKey(acolor: KeyColors.sixth),
              buildKey(acolor: KeyColors.seventh),
            ],
          ),
        ),
      ),
    );
  }
}
