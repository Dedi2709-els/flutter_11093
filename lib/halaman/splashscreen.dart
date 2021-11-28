import 'package:flutter/material.dart';
import 'package:flutter_19552011093/source1/splash/splash_comp.dart';
import 'package:flutter_19552011093/halaman/dashboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 10), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            alignment: Alignment.bottomCenter,
            children: [Splash.getLogo(context), Splash.getFooter()]));
  }
}
