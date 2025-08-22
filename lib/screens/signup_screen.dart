// lib/screens/signup_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      // نضيف AppBar للسماح للمستخدم بالرجوع
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey[800]),
          onPressed: () => Navigator.pop(context), // أمر الرجوع للخلف
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('إنشاء حساب جديد', style: GoogleFonts.poppins(fontSize: 32, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('املأ البيانات للتسجيل', style: GoogleFonts.poppins(fontSize: 16, color: Colors.grey[600])),
                const SizedBox(height: 40),

                const CustomTextField(hintText: 'الاسم الكامل', icon: Icons.person_outline),
                const CustomTextField(hintText: 'البريد الإلكتروني', icon: Icons.email_outlined, keyboardType: TextInputType.emailAddress),
                const CustomTextField(hintText: 'كلمة المرور', icon: Icons.lock_outline, isPassword: true),
                const SizedBox(height: 30),

                CustomButton(text: 'إنشاء الحساب', onPressed: () {}),
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("لديك حساب بالفعل؟", style: GoogleFonts.poppins()),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // أمر الرجوع لشاشة تسجيل الدخول
                      },
                      child: Text('تسجيل الدخول', style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: const Color(0xFF4285F4))),
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