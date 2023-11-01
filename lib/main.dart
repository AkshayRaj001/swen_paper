import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swen_paper/model/controller.dart';

import 'package:swen_paper/pages/homepage.dart';

void main() {
  runApp(Myapp());
  
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => homeScreenProvider(),)
      ],
      child: MaterialApp(
        home: homepage(),
      ),
    );
  }
}