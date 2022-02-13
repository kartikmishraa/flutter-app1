import 'package:flutter/material.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({ Key? key }) : super(key: key);

  @override
  _AnimeListState createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
              ),
            )
          ],
          centerTitle: true,
          title: const Text(
            'Anime Wallpapers',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "Redressed",
              fontSize: 35,
              ),
            ),
          backgroundColor: const Color(0xffeba10e),
          leading: const Hero(
            tag: 'logo', 
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/mikey.jpg'),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(
                height: 40,
              ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Demon Slayer',
                  style: TextStyle(
                    fontFamily: "Redressed",
                    fontSize: 30,
                  ),
                  ),
              ),

              SizedBox(
                height: 60,
              ),

              Image(
                image: AssetImage('assets/images/zenitsu-simple.jpg')
              ),

              // next up: ElevatedButton to change anime
            ],
        ),
        ),
      ),
    );
  }
}