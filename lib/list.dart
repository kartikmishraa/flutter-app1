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
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/wallpaper1.jpg')
          ),
        ),

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
          
          backgroundColor: Colors.transparent,
          
          body: SingleChildScrollView(
            child: Center(child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),

                ElevatedButton(
                  onPressed: () => {}, 
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 10,
                      ),
                    child: Text(
                      'Demon Slayer',
                      style: TextStyle(
                        fontFamily: "Redressed",
                        fontSize: 50,
                        color: Colors.black,
                      ),
                      ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber.shade600,
                    ),
                ),

                const SizedBox(
                  height: 40,
                ),

                ElevatedButton(
                  onPressed: () => {}, 
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 10,
                      ),
                    child: Text(
                      'Naruto',
                      style: TextStyle(
                        fontFamily: "Redressed",
                        fontSize: 50,
                        color: Colors.black,
                      ),
                      ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber.shade600,
                    ),
                ),

                // Padding(
                //   padding: EdgeInsets.only(left: 20),
                //   child: Text(
                //     'Demon Slayer',
                //     style: TextStyle(
                //       fontFamily: "Redressed",
                //       fontSize: 30,
                //     ),
                //     ),
                // ),

                const SizedBox(
                  height: 60,
                ),

                // const Image(
                //   image: AssetImage('assets/images/zenitsu-simple.jpg')
                // ),

                // next up: ElevatedButton to change anime
              ],
          ),
          ),
        ),
        ),
      ),
    );
  }
}