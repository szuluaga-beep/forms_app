import 'package:flutter/material.dart';

class CubitScreen extends StatelessWidget {
  const CubitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: const Center(
        child: Text('Counter screen xxx'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: '1',
            onPressed: () {},
            child: const Text('+3'),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: '2',
            onPressed: () {},
            child: const Text('+2'),
          ),
          const SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: '3',
            onPressed: () {},
            child: const Text('+1'),
          ),
        ],
      ),
    );
  }
}
