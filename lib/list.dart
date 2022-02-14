import 'package:flutter/material.dart';

const title_ = "Anime Wallpapers";
const baseFont = "Redressed";
const logoPath = "assets/images/mikey.jpg";
const heroTag = "logo";

class AnimeList extends StatefulWidget {
  const AnimeList({ Key? key }) : super(key: key);

  @override
  _AnimeListState createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  
  static const bgImgPath = "assets/images/wallpaper1.jpg";
  static const animeTitles = ["Demon Slayer", "Naruto"];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImgPath)
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
              title_,
              style: TextStyle(
                color: Colors.black,
                fontFamily: baseFont,
                fontSize: 35,
                ),
              ),
            backgroundColor: const Color(0xffeba10e),
            leading: const Hero(
              tag: heroTag, 
              child: CircleAvatar(
                backgroundImage: AssetImage(logoPath),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 10,
                      ),
                    child: Text(
                      animeTitles[0],
                      style: const TextStyle(
                        fontFamily: baseFont,
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 10,
                      ),
                    child: Text(
                      animeTitles[1],
                      style: const TextStyle(
                        fontFamily: baseFont,
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