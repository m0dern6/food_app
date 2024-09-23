import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png'),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: const Text('Sig in',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(305, 43)),
                      backgroundColor: MaterialStateProperty.all(buttonColor),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Sign in',
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: buttonColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )),
              Row(
                children: [
                  Container(
                    width: 146,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook),
                        Text(
                          'Google',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 146,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, 'sign_up');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: buttonColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
