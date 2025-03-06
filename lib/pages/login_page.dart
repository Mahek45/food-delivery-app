import 'package:flutter/material.dart';
import 'package:food_deliver/components/my_button.dart';
import 'package:food_deliver/components/my_textfield.dart';
import '../services/auth/auth_service.dart';
 
class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  //login method
  void login() async {
   // get instance of auth service
    final authService = AuthServices();

    // try sign in
    try{
      await authService.signInWithEmailAndPassword(emailController.text, passwordController.text);
    }

    // display any errors
    catch(e){
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface, // Updated from 'background' to 'surface'
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
Image.asset(
  'lib/images/logo.png', // Path to your logo
  height: 300,  // Adjust size as needed
  width: 300,   // Adjust size as needed
),


            const SizedBox(height: 15),

            // message, app slogan
            Text(
              "Shamshad's Kitchen",
              style: TextStyle(
                fontSize: 25,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email textfield
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            MyTextField(
              controller: passwordController,
              hintText: "password",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            // sign in button
            MyButton(
              text: "Sign in",
              onTap: login,
            ),

            const SizedBox(height: 25),

            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
