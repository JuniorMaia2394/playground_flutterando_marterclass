import 'package:flutter/material.dart';
import 'package:responsividade/screen_tinder/widget/button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: mediaQuery.height,
        width: mediaQuery.width,
        decoration: const BoxDecoration(
          color: Colors.cyan,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.flutter_dash,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              ButtonWidget(
                text: 'Tinder',
                icon: 'assets/tinder_logo.png',
                onTap: () => Navigator.of(context).pushNamed(
                  '/tinder',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ButtonWidget(
                text: 'Money',
                icon: 'assets/money_logo.png',
                onTap: () => Navigator.of(context).pushNamed(
                  '/money',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
