import 'package:flutter/material.dart';

class Instrumentalists extends StatefulWidget{
  const Instrumentalists({super.key});

  @override
  InstrumentalistsState createState() => InstrumentalistsState();

  }

class InstrumentalistsState extends State<Instrumentalists> {
  @override
  Widget build(context) {
    return GestureDetector(
    onTap: () {},
    child: Container(
    padding: const EdgeInsets.all(24),
    clipBehavior: Clip.hardEdge,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(24),
    image: const DecorationImage(
    image: AssetImage('assets/images/classics.jpg'),
    fit: BoxFit.fitWidth,
    ),
    ),
    child: const Text('Classic instrumentals band',
    style: TextStyle(fontSize: 20, color: Colors.white)),
    ),
    );
  }
}





