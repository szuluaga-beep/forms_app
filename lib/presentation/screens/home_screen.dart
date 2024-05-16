import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text('Cubit'),
            subtitle: const Text('Gestor de estado simple'),
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            onTap: () => context.push('/cubit'),
          )
        ],
      ),
    );
  }
}
