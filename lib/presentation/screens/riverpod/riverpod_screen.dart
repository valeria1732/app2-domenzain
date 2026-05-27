import 'package:flutter/material.dart';

class RiverpodScreen extends StatelessWidget {
  static final String name = "riverpod_screen";
  const RiverpodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod'),
      ),
      body: Placeholder()
    );
  }
}