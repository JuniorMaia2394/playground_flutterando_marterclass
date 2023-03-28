import 'package:app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppWidget());
}

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => AppWidgetState();
}

class AppWidgetState extends State<AppWidget> {
  var _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: ThemeInherited(
        themeMode: themeMode,
        child: const HomePage(),
      ),
    );
  }
}

class ThemeInherited extends InheritedWidget {
  final ThemeMode themeMode;
  const ThemeInherited({
    super.key,
    required super.child,
    required this.themeMode,
  });

  static ThemeInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeInherited>();
  }

  @override
  bool updateShouldNotify(covariant ThemeInherited oldWidget) {
    return themeMode != oldWidget.themeMode;
  }
}
