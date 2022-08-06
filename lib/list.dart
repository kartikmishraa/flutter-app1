import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const String title_ = "Anime Wallpapers";
const String baseFont = "Redressed";
const String logoPath = "assets/images/mikey.jpg";
const String heroTag = "logo";

class AnimeList extends StatefulWidget {
  const AnimeList({Key? key}) : super(key: key);

  @override
  _AnimeListState createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  static const String bgImgPath = "assets/images/wallpaper1.jpg";
  static const List<String> animeTitles = [
    "Demon Slayer",
    "Naruto",
    "Tokyo Revengers",
    "Horimiya",
    "Black Clover",
  ];

  static const List<String> url = [
    'https://wallpaperaccess.com/demon-slayer-phone',
    'https://wallpaperaccess.com/naruto-phone',
    'https://www.peakpx.com/en/search?q=tokyo+revengers',
    'https://wallpaperaccess.com/horimiya',
    'https://wallpaperaccess.com/black-clover-mobile',
  ];

  SizedBox mySizedBox(double height_, double width_) {
    return SizedBox(
      height: height_,
      width: width_,
    );
  }

  ElevatedButton myElevatedButton(
      int animeNum, double paddingH, double paddingV) {
    return ElevatedButton(
      onPressed: () async {
        if (!await launch(url[animeNum],
            forceWebView: false, enableJavaScript: true)) {
          throw "Could not launch";
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingH,
          vertical: paddingV,
        ),
        child: Text(
          animeTitles[animeNum],
          style: const TextStyle(
            fontFamily: baseFont,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return Colors.yellow;
            return Colors.amber.shade600;
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(bgImgPath)),
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
            child: Center(
              child: Column(
                children: [
                  mySizedBox(40, 0),
                  myElevatedButton(0, 35, 10),
                  mySizedBox(40, 0),
                  myElevatedButton(1, 75, 10),
                  mySizedBox(40, 0),
                  myElevatedButton(2, 25, 10),
                  mySizedBox(40, 0),
                  myElevatedButton(3, 65, 10),
                  mySizedBox(40, 0),
                  myElevatedButton(4, 45, 10),
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
