import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailText = TextEditingController();

  var passwordText = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return " email must not br empty";
                      }
                      return null;
                    },
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
                    obscureText: hidePassword,

                    validator: (value) {
                      if (value!.isEmpty) {
                        return " password is too short";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: "Enter your password",
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: () {
                        hidePassword = ! hidePassword;
                        setState(() {

                        });
                      },
                      icon:  Icon( hidePassword ? Icons.visibility_off : Icons.remove_red_eye)),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState != null &&
                            formKey.currentState!.validate()) {
                          print(emailText.text);
                          print(passwordText.text);
                        }
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don\'t have an account?"),
                      TextButton(
                          onPressed: () {
                            print("Create account");
                          },
                          child: Text("Register Now"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
