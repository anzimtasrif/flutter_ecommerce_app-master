import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea( // স্ট্যাটাস বারের নিচে দেখানোর জন্য
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // কন্টেন্ট উপরে রাখার জন্য
          children: [
            const SizedBox(height: 50), // একদম উপর থেকে একটু গ্যাপ দেওয়ার জন্য

            // প্রোফাইল ইমেজের সাইজ ছোট করা হয়েছে (height: 150)
            Image.asset(
              'assets/images/profile_pic.png',
              height: 250,
              width: 250,
            ),

            const SizedBox(height: 20), // ইমেজ এবং টেক্সট এর মাঝে গ্যাপ

            const Text(
              "Hello Anzim Tasrif!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),

            const SizedBox(height: 10), // নামের নিচে সামান্য গ্যাপ

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/github.png',
                  width: 25,
                ),
                const SizedBox(width: 5),
                const Text(
                  "https://github.com/anzimtasrif",
                  style: TextStyle(fontSize: 18),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}