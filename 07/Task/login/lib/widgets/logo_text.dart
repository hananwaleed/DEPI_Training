import 'package:flutter/material.dart';
import 'package:login/widgets/app_colors.dart';


class LogoText extends StatelessWidget {
  const LogoText({super.key});
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [AppColors.primary, AppColors.secondary],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(Rect.fromLTWH(0, 0, bounds.height, bounds.height)),
      child: Text(
        "LOGO",
        style: TextStyle(
          fontFamily: "prime",
          fontSize: 60,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }
}
