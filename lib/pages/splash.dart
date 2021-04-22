import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        Navigator.pushReplacementNamed(context, "/home");
      });
    });
  }

  void setStateIfMounted(e) {
    if (mounted) setState(e);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      body: Center(
        child: Image(
          //parte importante, definire gli asset per trovarli più velocemnte
          //si inseriscono nel pubspec.yaml
          image: new AssetImage('assets/images/img.png'),
          height: 280.0,
          width: 280.0,
        ),
      ),
    );
  }
}
