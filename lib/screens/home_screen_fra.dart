import 'package:flutter/material.dart';

class HomeScreenFra extends StatelessWidget {
  const HomeScreenFra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FlutterLogo(size: 100),
            const SizedBox(height: 50), 
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'signin_screen');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(150, 50),
              ),
              child: const Text(
                'Sign in',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: null, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                disabledForegroundColor: Colors.white.withOpacity(0.7),
                disabledBackgroundColor: Colors.grey,
                minimumSize: const Size(150, 50),
              ),
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}