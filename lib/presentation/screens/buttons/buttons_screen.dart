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
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              const ElevatedButton(
                onPressed: null,
                child: const Text('Elevated Disabled Button'),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                label: Text("Elevated Icon Button"),
                icon: Icon(Icons.add),
              ),

              FilledButton(
                onPressed: () {},
                child: const Text('Filled Button'),
              ),
              FilledButton.icon(
                onPressed: () {},
                label: Text("Filled Icon Button"),
                icon: Icon(Icons.alarm),
              ),

              OutlinedButton(
                onPressed: () {},
                child: const Text('Outlined Button'),
              ),
              OutlinedButton.icon(
                onPressed: () {},
                label: Text("Outlined Icon Button"),
                icon: Icon(Icons.add),
              ),

              TextButton(onPressed: () {}, child: const Text('Text Button')),
              TextButton.icon(
                onPressed: () {},
                label: Text("Text Icon Button"),
                icon: Icon(Icons.add),
              ),

              const _CustomButton(),

              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_outlined),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),
                  iconColor: WidgetStatePropertyAll(Colors.white)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Registrate!", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
