import 'package:admin_panel_two/styling/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: AppColors.light,
          body: Center(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.fromLTRB(50,0,50,0),
                width: 400,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _header(context),
                    _inputField(context),
                    _forgotPassword(context),
                    _signup(context),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

_header(context) {
  return const Column(
    children: [
      Text(
        "BEEFEATER",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Enter your credential to login"),
    ],
  );
}

_inputField(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor:
                AppColors.light,
            filled: true,
            prefixIcon: const Icon(Icons.person,
                color: AppColors.TextColor1)),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: AppColors.light,
          filled: true,
          prefixIcon: const Icon(Icons.password,
              color: AppColors.TextColor1),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: AppColors.dark
        ),
        child: const Text(
          "Login",
          style: TextStyle(
              fontSize: 20, color: AppColors.light),
        ),
      )
    ],
  );
}

_forgotPassword(context) {
  return TextButton(
    onPressed: () {},
    child: const Text(
      "Forgot password?",
      style: TextStyle(color: AppColors.TextColor2),
    ),
  );
}

_signup(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Dont have an account? "),
      TextButton(
          onPressed: () {
               Navigator.pushNamed(context, '/signup');
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(
                color: AppColors.TextColor1,
                fontWeight: FontWeight.bold),
          ))
    ],
  );
}
