import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

var emailText = TextEditingController();
var passwordText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
            controller: emailText,
             onChanged: (text) {
                print(text);
             },
             decoration: const InputDecoration(
               labelText: "Enter your email.",
               prefixIcon: Icon(Icons.email),
               border: OutlineInputBorder(),
             ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: passwordText,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Enter your password",
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              color: Colors.blue,
              child: MaterialButton(onPressed: (){
               print(emailText.text);
               print(passwordText.text);
              },
              child:
              const Text("LOGIN",
                style: TextStyle(color: Colors.white),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
