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
  static const animeTitles = [
                            "Demon Slayer", 
                            "Naruto", 
                            "Tokyo Revengers",
                            "Horimiya",
                            "Black Clover",
                            ];
  
  SizedBox mySizedBox(double height_, double width_) {
    return SizedBox(
      height: height_,
      width: width_,
    );
  }

  ElevatedButton myElevatedButton(String anime_, double paddingH, double paddingV) {
    return ElevatedButton(
      onPressed: () => {}, 
      child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingH,
                vertical: paddingV,
              ),
              child: Text(
                anime_,
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
      );
  }

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
                mySizedBox(40, 0),

                myElevatedButton(animeTitles[0], 35, 10),

                mySizedBox(40, 0),

                myElevatedButton(animeTitles[1], 100, 10),

                mySizedBox(40, 0),

                myElevatedButton(animeTitles[2], 12, 10),

                mySizedBox(40, 0),

                myElevatedButton(animeTitles[3], 80, 10),

                mySizedBox(40, 0),

                myElevatedButton(animeTitles[4], 45, 10),

                mySizedBox(40, 0),
              ],
          ),
          ),
        ),
        ),
      ),
    );
  }
}