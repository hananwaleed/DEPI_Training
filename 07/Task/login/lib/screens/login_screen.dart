import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:login/screens/home_screen.dart';
import 'package:login/screens/register_screen.dart';
import 'package:login/widgets/app_colors.dart';
import 'package:login/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController userName = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 130),
                  // const Center(child: LogoText()),
                  const SizedBox(height: 70),
                  const Center(
                    child: Text(
                      "Welcome back!",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // const Center(
                  //   child: Text(
                  //     "Log in to existing LOGO account",
                  //     style: TextStyle(
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.w600,
                  //       color: Colors.grey,
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 50),

                  CustomTextField(
                    controller: userName,
                    hint: "Username",
                    icon: Icons.person_3_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username is required";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),

                  CustomTextField(
                    controller: password,
                    hint: "Password",
                    icon: Icons.lock_open_outlined,
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password is required";
                      }
                      if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // login button
                  GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      }
                    },
                    child: Container(
                      width: 199,
                      height: 53,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.2,
                            blurRadius: 2,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [AppColors.primary, AppColors.secondary],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  // social login text
                  const Center(
                    child: Text(
                      "Or sign up using ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // social icons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Ionicons.logo_facebook,
                        size: 33,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 7),
                      Icon(Ionicons.logo_google, size: 33, color: Colors.red),
                      SizedBox(width: 7),
                      Icon(Ionicons.logo_apple, size: 33),
                    ],
                  ),
                  const SizedBox(height: 18),

                  // signup text
                  RichText(
                    text: TextSpan(
                      text: "Don’t have an account? ",
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: "Sign Up",
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),


        Positioned(child: Image.asset("assets/images/Rectangle 11.png")),
        Positioned(child: Image.asset("assets/images/Rectangle 12.png")),
      ],
    );
  }
}
