import 'package:flutter/material.dart';

//widgets
import 'package:login_screen/widgets/HomeItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.dstATop),
          fit: BoxFit.cover,
          image: const AssetImage('assets/images/home-background.jpg'),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/logo.png', height: 150, width: 150),
              // const HomeCarousel(),
              homeItem(),
              homeItem(),
              homeItem(),
              homeItem(),
              homeItem(),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text('Sign Out'),
              )
            ]
          )
        ),
      )
    );
  }
}