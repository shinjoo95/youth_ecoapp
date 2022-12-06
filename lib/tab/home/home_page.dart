import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final List<String> _slideImages = [
    'assets/pic1.jpeg',
    'assets/pic2.jpeg',
    'assets/pic3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,

        leading: Image.asset('assets/youth1.png',),
        title: Text('청년문간', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
        ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, left: 1, right: 1),
                  child: Column(
                    children: [
                      Divider(color: Colors.grey),
                      SizedBox(
                        width: 400,
                        height: 300,
                        child:
                            Image.asset('assets/logo.jpeg', fit: BoxFit.cover, ),
                      ),
                      Divider(color: Colors.grey),
                      SizedBox(height: 200, child: slidePictures()),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 15,
                        child: AnimatedTextKit(
                            repeatForever: true,
                            animatedTexts: [FadeAnimatedText('C O N T A C T', textStyle: TextStyle(fontWeight: FontWeight.bold))]),
                      ),
                      SizedBox(height: 10),
                      contactButton(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget slidePictures() {
    return CarouselSlider(
      options: CarouselOptions(height: 200.0, autoPlay: true),
      items: _slideImages.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget contactButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            onPressed: () async {
              final url =
                  Uri.parse('https://www.instagram.com/youthmungan_eco/');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              } else {
                print('Cannot launch $url');
              }
            },
            child: Image.asset(
              'assets/instagram.png',
              height: 30,
              width: 30,
            )),
        SizedBox(
          height: 35,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            onPressed: () async {
              final url = Uri.parse('https://m.youtube.com/@user-fr1wt2oo3u');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              } else {
                print('Cannot launch $url');
              }
            },
            child: Image.asset(
              'assets/youtube.png',
              height: 60,
              width: 60,
            )),
        SizedBox(
          height: 35,
          child: VerticalDivider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            onPressed: () async {
              final url = Uri.parse('https://youthmungan.com/59');
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              } else {
                print('Cannot launch $url');
              }
            },
            child: Image.asset(
              'assets/home.png',
              height: 30,
              width: 30,
            )),
      ],
    );
  }
}
