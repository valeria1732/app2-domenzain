import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static final String name = "snackbar_screen";
  const SnackbarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar y Dialogos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  applicationIcon: FlutterLogo(),
                  applicationName: 'Flutter App',
                  applicationVersion: '1.0',
                  applicationLegalese:
                      '© 2024 Mi Empresa. Todos los derechos reservados.',
                  children: [
                    Text(
                      'Ut enim dolore eiusmod aliqua laboris ullamco ad ad mollit consequat. Veniam et consectetur id cillum. Deserunt tempor sunt non officia nulla velit irure consectetur reprehenderit adipisicing est. Incididunt pariatur consequat magna reprehenderit magna est in quis officia. Ut veniam aliquip id quis non ut. Esse id adipisicing id elit dolor id aute proident.',
                    ),
                  ],
                );
              },
              child: Text('Licencias usadas'),
            ),

            SizedBox(height: 10),

            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Mostrar Diálogo'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('data'),
        content: Text(
          'Ut enim dolore eiusmod aliqua laboris ullamco ad ad mollit consequat. Veniam et consectetur id cillum. Deserunt tempor sunt non officia nulla velit irure consectetur reprehenderit adipisicing est. Incididunt pariatur consequat magna reprehenderit magna est in quis officia. Ut veniam aliquip id quis non ut. Esse id adipisicing id elit dolor id aute proident.',
        ),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar')),
        ],
      ),
    );
  }

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackBar = SnackBar(
      content: Text('Hola Mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
