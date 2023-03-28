import 'package:app/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [MyCustomSwitch()],
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 200,
          height: 200,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
              child: Text(
                '$_counter',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyCustomSwitch extends StatelessWidget {
  const MyCustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeInherited.of(context);
    final state = context.findRootAncestorStateOfType<AppWidgetState>()!;

    final isDark = state.themeMode == ThemeMode.dark;
    return Switch(
        value: isDark,
        onChanged: (value) {
          if (value) {
            state.changeTheme(ThemeMode.dark);
          } else {
            state.changeTheme(ThemeMode.light);
          }
        });
  }
}
