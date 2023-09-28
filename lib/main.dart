import 'package:flutter/material.dart';
import 'package:increment_and_decrement_san/HomePage.dart';

void main (){
  runApp(IntSan());
}
class IntSan extends StatelessWidget {
  const IntSan({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
    );
  }
}