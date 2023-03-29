import 'package:flutter/material.dart';
import 'package:inherited/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Box(
      color: JuniorTheme.of(context).principal1,
      child: Box(
        color: JuniorTheme.of(context).principal1Background,
        child: Box(
          color: JuniorTheme.of(context).principal2,
          // child: Box(
          //   color: JuniorTheme.of(context).principal2Background,
          // ),
          child: JuniorTheme(
            principal1: Colors.cyan.shade300,
            principal1Background: Colors.cyan.shade200,
            principal2: Colors.cyan.shade100,
            principal2Background: Colors.purple,
            child: Builder(
              builder: (internalContext) {
                return Box(
                  color: JuniorTheme.of(internalContext).principal2Background,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
