import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 249, 247, 247),
          body: Center(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                width: 400,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _header(context),
                    _inputField(context),
                    //_alreadyAccount(context),
                    _login(context),
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
        "Sign up",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      Text("Create your account"),
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
                const Color.fromARGB(255, 219, 226, 239).withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person,
                color: Color.fromARGB(255, 41, 88, 145))),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
            hintText: "Email",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none),
            fillColor:
                const Color.fromARGB(255, 219, 226, 239).withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.email,
                color: Color.fromARGB(255, 41, 88, 145))),
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: const Color.fromARGB(255, 241, 250, 238).withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.password,
              color: Color.fromARGB(255, 41, 88, 145)),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 10),
      TextField(
        decoration: InputDecoration(
          hintText: "Confirm Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none),
          fillColor: const Color.fromARGB(255, 241, 250, 238).withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.password,
              color: Color.fromARGB(255, 41, 88, 145)),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 10),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          backgroundColor: const Color.fromARGB(255, 17, 45, 78),
        ),
        child: const Text(
          "Sign up",
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 249, 247, 247)),
        ),
      ),
      const SizedBox(height: 10),
      const Center(
          child: Text(
            'Or',
            style: TextStyle( // Change text color here
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      const SizedBox(height: 10),
      OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: BorderSide(color:Color.fromARGB(255, 17, 45, 78)),
          backgroundColor: const Color.fromARGB(255, 249, 247, 247),
        ),
        
        child: const Text(
          "Sign In with Google",
          style: TextStyle(
              fontSize: 20, color: Color.fromARGB(255, 17, 45, 78)),
        ),
      )
    ],
  );
}


_login(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Already have an account?"),
      TextButton(
          onPressed: () {
               Navigator.pushNamed(context, '/login');
          },
          child: const Text(
            "Login",
            style: TextStyle(
                color: Color.fromARGB(255, 17, 45, 78),
                fontWeight: FontWeight.bold),
          ))
    ],
  );
}
