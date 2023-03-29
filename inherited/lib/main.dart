import 'package:flutter/material.dart';
import 'package:inherited/home/home_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: const ColorScheme.light(
      //     primary: Colors.green,
      //     secondary: Colors.blue,
      //     tertiary: Colors.yellow,
      //     background: Colors.black,
      //   ),
      // ),
      home: JuniorTheme(
        principal1: Colors.green,
        principal1Background: Colors.blue,
        principal2: Colors.yellow,
        principal2Background: Colors.black,
        child: HomePage(),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final Color color;
  final Widget? child;
  const Box({
    super.key,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: Container(
            width: constraints.maxWidth / 2,
            height: constraints.maxHeight / 2,
            color: color,
            child: child,
          ),
        );
      },
    );
  }
}

class JuniorTheme extends InheritedWidget {
  final Color principal1;
  final Color principal1Background;
  final Color principal2;
  final Color principal2Background;

  const JuniorTheme({
    super.key,
    required super.child,
    required this.principal1,
    required this.principal1Background,
    required this.principal2,
    required this.principal2Background,
  });

  static JuniorTheme of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<JuniorTheme>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}
