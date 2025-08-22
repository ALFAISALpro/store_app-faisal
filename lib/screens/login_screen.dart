// lib/screens/login_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import 'signup_screen.dart'; // استيراد شاشة إنشاء حساب
import 'forgot_password_screen.dart'; // استيراد شاشة نسيت كلمة المرور

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // الشعار والعنوان
                const Icon(Icons.android, size: 80, color: Color(0xFF4285F4)),
                const SizedBox(height: 20),
                Text('أهلاً بعودتك!', style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('سجل الدخول للمتابعة', style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600])),
                const SizedBox(height: 40),

                // حقول الإدخال باستخدام الويدجت المخصص
                const CustomTextField(hintText: 'البريد الإلكتروني', icon: Icons.email_outlined, keyboardType: TextInputType.emailAddress),
                const CustomTextField(hintText: 'كلمة المرور', icon: Icons.lock_outline, isPassword: true),
                const SizedBox(height: 10),

                // رابط نسيت كلمة المرور
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // هنا ننتقل إلى شاشة نسيت كلمة المرور
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                    },
                    child: Text('نسيت كلمة المرور؟', style: GoogleFonts.poppins(color: const Color(0xFF4285F4))),
                  ),
                ),
                const SizedBox(height: 20),

                // زر تسجيل الدخول
                CustomButton(text: 'تسجيل الدخول', onPressed: () {}),
                const SizedBox(height: 30),

                // رابط إنشاء حساب جديد
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ليس لديك حساب؟", style: GoogleFonts.poppins()),
                    TextButton(
                      onPressed: () {
                        // هنا ننتقل إلى شاشة إنشاء حساب
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen()));
                      },
                      child: Text('أنشئ حساباً', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: const Color(0xFF4285F4))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}