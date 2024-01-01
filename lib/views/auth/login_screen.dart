import 'package:flutter/material.dart';
import 'package:user_app/home/home_screen.dart';
import 'package:user_app/shared/colors.dart';
import 'package:user_app/views/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  // controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // form key
  final formKey = GlobalKey<FormState>();
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 44.0,
                  color: mainColor,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Sign up ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  fontSize: 20,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Log in with Email',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'RobotoMono',
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          //  todo  form
          Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'Your email: ',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RobotoMono',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    //  validator
                    decoration: const InputDecoration(
                      hintText: '     yoora21@gmail.com',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 10),
                  child: const Text(
                    'password ',
                    style: TextStyle(
                      fontFamily: 'RobotoMono',
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: TextFormField(
                    controller: emailController,
                    //  validator
                    decoration:
                        const InputDecoration(hintText: '      *******'),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: mainColor,
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    // ignore: prefer_const_constructors
                    const Column(
                      children: [
                        Text('keep me logged in '),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 29,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: mainColor,
                    ),
                    // padding: const EdgeInsets.only(top: 10),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Forget password '),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
