import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/widgets/logo_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (e) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset(
                  "assets/images/Group 33677.png",
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(top: 100, left: 130, child: LogoText()),
            ],
          ),
          const SizedBox(height: 20),
          Center(
            child: Column(
              children: const [
                Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 13),
                Text(
                  "Lorem Ipsum is a dummy text used as placeholder",
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
