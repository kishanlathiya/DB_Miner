import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isNotChangedPage = true;

  @override
  initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment(0, 0.5),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://source.unsplash.com/random/?animal"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                alignment: Alignment.center,
                height: 70,
                width: double.infinity,
                color: Colors.black.withOpacity(0.5),
                child: Text(
                  "Animal Biography",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          )),
    );
  }
}
