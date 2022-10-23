import 'package:flutter/material.dart';

//screens
import './home.dart';

//widgets
import 'widgets/LoginItem.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const Scaffold(body: LoginScreen()),
        '/home': (context) => Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text('Home'),
          ),
          body: const HomeScreen()
        ),
      },
      theme: ThemeData(
        //default colors
        colorScheme: const ColorScheme.light().copyWith(primary: const Color(0xffff7582)),
        scaffoldBackgroundColor: const Color(0xff725a7a),
        //text colors
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: const Color(0xffff7582), 
          displayColor: const Color(0xffff7582),
        ),
        //default fonts
        fontFamily: 'Open Sans',
        //button
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(50),
            shape: const StadiumBorder(),
          )
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.jpg'),
        ),
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Image.asset('assets/images/logo.png', height: 200, width: 200),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: loginItem('Username'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: loginItem('Password'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    }, 
                    child: const Text('Login'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {}, 
                  child: const Text('Sign Up'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}