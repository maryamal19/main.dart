import 'package:acakdadu/gradient_container.dart';
import 'package:flutter/material.dart';


void main() {
  //const membuat widget disimpan di memory, sehingga tidk perlu membuat widget baru setiap kali aplikasi dipanggil
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(68, 45, 988, 86),Color.fromARGB(654, 86, 87, 48)
        )),
    ),
  );
}