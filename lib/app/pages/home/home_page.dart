import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('Go to Details'),
              onPressed: () => Navigator.pushNamed(context, '/details'),
            ),
            ElevatedButton(
              child: const Text('Go to Splash'),
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context,
                '/splash',
                (route) => false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
