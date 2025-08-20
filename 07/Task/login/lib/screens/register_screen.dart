import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';
import 'package:login/widgets/app_colors.dart';
import 'package:login/widgets/custom_text_field.dart';


class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 145),
                    const Center(
                      child: Text(
                        "Let’s Get Started!",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Create an account on MNZL to get all features",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),

                    // First Name
                    CustomTextField(
                      controller: firstName,
                      hint: "First Name",
                      icon: Icons.person_2_outlined,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "First name is required";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Last Name
                    CustomTextField(
                      controller: lastName,
                      hint: "Last Name",
                      icon: Icons.person_2_outlined,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Last name is required";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Username
                    CustomTextField(
                      controller: userName,
                      hint: "User Name",
                      icon: Icons.person_2_outlined,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username is required";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Email
                    CustomTextField(
                      controller: email,
                      hint: "Email",
                      icon: Icons.email_outlined,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Email is required";
                        }
                        if (!value.contains("@")) {
                          return "Enter a valid email";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 10),

                    // Password
                    CustomTextField(
                      controller: password,
                      hint: "Password",
                      icon: Icons.lock_outline,
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

                    // Confirm Password
                    CustomTextField(
                      controller: confirmPassword,
                      hint: "Confirm Password",
                      icon: Icons.lock_outline,
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Confirm your password";
                        }
                        if (value != password.text) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),

                    // Create button
                    GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // هنا هتعملي عملية التسجيل أو تروحي لصفحة تانية
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Account Created Successfully!"),
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
                            "Create",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),

                    // Already have account
                    RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: "Login here",
                            style: const TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
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
        ),

        // Positioned background images
        Positioned(child: Image.asset("assets/images/Rectangle 11.png")),
        Positioned(child: Image.asset("assets/images/Rectangle 12.png")),
      ],
    );
  }
}
