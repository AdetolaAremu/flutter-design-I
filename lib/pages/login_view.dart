import 'package:designflutter/pages/register_view.dart';
import 'package:designflutter/util/login_options.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Login'),
      ),
      backgroundColor: Colors.grey[20],
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login to your account',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      elevation: 3.0,
                      shadowColor: const Color(0xFFFAFAFA),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email address',
                          hintStyle: const TextStyle(color: Colors.grey),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 6),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Material(
                      elevation: 3.0,
                      shadowColor: const Color.fromARGB(244, 247, 245, 245),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.grey),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 6),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const RegisterView();
                    },
                  ),
                );
              },
              child: const Text(
                'Not registered? Create an account here',
                style: TextStyle(color: Colors.black54),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.black12,
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginOptions(
              image: 'assets/fb.png',
              text: 'Continue with Facebook',
              imagePadding: 12,
              textPadding: 15,
              imageSize: 17,
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginOptionsRight(
              image: 'assets/google.jpg',
              text: 'Continue with Google',
              imagePadding: 5,
              textPadding: 10,
              imageSize: 19,
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginOptionsRight(
              image: 'assets/apple.png',
              text: 'Continue with Apple',
              imagePadding: 3,
              textPadding: 20,
              imageSize: 25,
            ),
          ],
        ),
      ),
    );
  }
}

// border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                           color: Colors.deepOrangeAccent, width: 1.0),
