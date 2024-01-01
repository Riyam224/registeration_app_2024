import 'package:flutter/material.dart';
import 'package:user_app/shared/colors.dart';
import 'package:user_app/views/auth/register_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  // animation  splash page
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => RegisterScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome,',
              style: TextStyle(
                fontFamily: 'RobotoMono',
                fontSize: 50,
                color: mainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'See What’s Next. ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset('assets/images/Group 4.png'),
            const SizedBox(
              height: 20,
            ),
            const Center(child: Text('Explore the world of Netflix, ')),
            const Center(child: Text('dive in.')),
          ],
        ),
      ),
    );
  }
}
