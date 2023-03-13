import 'package:flutter/material.dart';
import 'package:xylophone_app/core/playsound_function.dart';
import 'package:xylophone_app/product/keyColors.dart';

Expanded buildKey({required Color acolor}) {
  return Expanded(
    child: Container(
      color: acolor,
      child: TextButton(
        onPressed: () {
          soundsForKeys(acolor);
        },
        child: const Text(''),
      ),
    ),
  );
}

void soundsForKeys(Color acolor) {
  if (acolor == KeyColors.first) {
    playsound(1);
  } else if (acolor == KeyColors.second) {
    playsound(2);
  } else if (acolor == KeyColors.third) {
    playsound(3);
  } else if (acolor == KeyColors.fourth) {
    playsound(4);
  } else if (acolor == KeyColors.fifth) {
    playsound(5);
  } else if (acolor == KeyColors.sixth) {
    playsound(6);
  } else if (acolor == KeyColors.seventh) {
    playsound(7);
  }
}
