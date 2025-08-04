import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Screens')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: SizedBox(
        child: Wrap(
          spacing: 10,
          children: [
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            ElevatedButton(onPressed: () {}, child: const Text('Elevated Button')),
            ElevatedButton(onPressed: null, child: const Text('Elevated Disabled Button')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined Button')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}
