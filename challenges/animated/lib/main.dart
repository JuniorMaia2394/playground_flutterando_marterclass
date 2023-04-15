import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    const topCenter = Alignment.topCenter;
    const bottomRight = Alignment.bottomRight;

    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Center(
        child: AnimatedAlign(
          alignment: isClicked ? topCenter : bottomRight,
          duration: const Duration(
            seconds: 2,
          ),
          curve: Curves.fastOutSlowIn,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: AnimatedContainer(
              width: isClicked ? 150 : 100,
              height: isClicked ? 70 : 100,
              duration: const Duration(
                seconds: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: isClicked
                    ? BorderRadius.circular(
                        0,
                      )
                    : BorderRadiusDirectional.circular(
                        50,
                      ),
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
