import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "button-screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🎛️ Botones'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.redAccent,
        label: const Text('®️ Regresar'),
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => context.pop(),
      ),
      body: const _ButtonsView(),
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
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 120.0),
        child: Wrap(
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: colors.primary,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('🚀 Elevated'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text(' Di👎👎👎🙅‍♀️sabled'),
            ),

            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              label: const Text('⏰ Alarm'),
              icon: const Icon(Icons.access_alarm_rounded),
            ),

            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text('🟢 Filled'),
            ),

            FilledButton.icon(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              label: const Text('💻 Terminal'),
              icon: const Icon(Icons.terminal),
            ),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: colors.primary,
              ),
              onPressed: () {},
              child: const Text('📦 Outlined'),
            ),

            OutlinedButton.icon(
              onPressed: () {},
              label: const Text('♿ Access'),
              icon: const Icon(Icons.accessibility_new),
            ),

            TextButton(
              onPressed: () {},
              child: const Text('📝 Text'),
            ),

            TextButton.icon(
              onPressed: () {},
              label: const Text('🏦 Bank'),
              icon: const Icon(Icons.account_balance_outlined),
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined),
              color: Colors.green,
              iconSize: 28,
            ),

            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll(Colors.pinkAccent),
                iconColor: const WidgetStatePropertyAll(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}