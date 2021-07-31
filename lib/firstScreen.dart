import 'package:flutter/material.dart';
import 'package:flutter_application_3/secondScreen.dart';

class firstScreen extends StatelessWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/tu.PNG'),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' Growing your business is ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 55,
                            fontFamily: "Fira",
                            decoration: TextDecoration.none)),
                    TextSpan(
                        text: 'easier',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 60,
                            fontFamily: "Fira",
                            decoration: TextDecoration.none)),
                    TextSpan(
                        text: ' than you think!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 55,
                            fontFamily: "Fira",
                            decoration: TextDecoration.none)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Sign up only take 2 minutes',
              style: TextStyle(
                color: Colors.grey,
                fontFamily: "Fira",
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(550, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const secondScreen(),
                    ),
                  );
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(fontSize: 25),
                )),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey,
                  minimumSize: Size(550, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Sign in',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
