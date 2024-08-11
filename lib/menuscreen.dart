import 'package:flutter/material.dart';

class Menuscreen extends StatefulWidget {
  const Menuscreen({super.key});

  @override
  State<Menuscreen> createState() => _MenuscreenState();
}

class _MenuscreenState extends State<Menuscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Menu'))
      ),
      body: Column(
        children: [
          Row(
            children: [
              
            ],
          )
        ],
      ),
    );
  }
}