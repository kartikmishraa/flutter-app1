import 'package:flutter/material.dart';
import 'package:my_application_1/list.dart';

void main() {
  runApp(const MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My mobile app',
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea( child: Center(
      child: Scaffold(
        backgroundColor: const Color(0xffeba10e),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Hero(
              tag: 'logo',
              child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/mikey.jpg'),
                      radius: 75,
                    ),
            ),
            const SizedBox(
              height: 20,
            ),

            const Center(
              child: Text(
                'Anime Wallpapers',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Redressed",
                ),
              ),
            ),

            const SizedBox(
              height: 100,
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const AnimeList()
                  )
                );
              }, 
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  '->',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w300,
                  ),),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}