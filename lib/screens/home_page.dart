import 'package:audis_home_page/utils/style.dart';
import 'package:audis_home_page/widgets/music_card.dart';
import 'package:audis_home_page/widgets/time_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('KingdomMusic'),
          titleTextStyle: TextStyle(
            color: Style.accentColor,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          centerTitle: true,
          backgroundColor: Style.primaryColor,
          leading: Icon(
            Icons.search,
            color: Style.accentColor,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: width / 50, top: height / 100),
              child: Stack(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  CircleAvatar(
                    backgroundColor: Style.secoundaryColor,
                    maxRadius: width / 70,
                    minRadius: width / 70,
                  ),
                ],
              ),
            )
          ],
        ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width / 40,
                    vertical: height / 100,
                  ),
                  height: height / 17,
                  color: Style.primaryColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.group,
                            color: Style.secoundaryColor,
                            size: 30,
                          ),
                          SizedBox(
                            width: width / 50,
                          ),
                          Text(
                            'برای من',
                            style: TextStyle(
                              color: Style.secoundaryColor,
                              fontFamily: 'Lalezar',
                              fontWeight: FontWeight.normal,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Style.secoundaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          'مشاهده همه',
                          style: TextStyle(
                            color: Style.textColor,
                            fontFamily: 'Vazir',
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(width / 40),
                  child: Column(
                    children: [
                      MusicCard(
                        width: width,
                        height: height,
                        musicName: 'نام آهنگ شماره اول',
                        musicImageUrl: 'assets/images/music_image1.png',
                        musicTime: '2:49',
                        singerName: 'نام خاواننده شماره اول',
                        isFavorite: false,
                        favoriteCount: 380,
                        playsCount: '12.700K',
                        repeatCount: 780,
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      TimeBox(width: width, time: 'فرورین 1402'),
                      SizedBox(
                        height: height / 60,
                      ),
                      MusicCard(
                        width: width,
                        height: height,
                        musicName: 'نام آهنگ شماره دوم',
                        musicImageUrl: 'assets/images/music_image2.png',
                        musicTime: '5:9',
                        singerName: 'نام خاواننده شماره دوم',
                        isFavorite: true,
                        favoriteCount: 100,
                        playsCount: '14.700K',
                        repeatCount: 2222,
                      ),
                      SizedBox(
                        height: height / 50,
                      ),
                      MusicCard(
                        width: width,
                        height: height,
                        musicName: 'نام آهنگ شماره سوم',
                        musicImageUrl: 'assets/images/music_image3.png',
                        musicTime: '1:30',
                        singerName: 'نام خاواننده شماره سوم',
                        isFavorite: false,
                        favoriteCount: 10,
                        playsCount: '1.800K',
                        repeatCount: 500,
                      ),
                      SizedBox(
                        height: height / 60,
                      ),
                      TimeBox(width: width, time: 'اردیبهشت 1402'),
                      SizedBox(
                        height: height / 60,
                      ),
                      MusicCard(
                        width: width,
                        height: height,
                        musicName: 'نام آهنگ شماره چارم',
                        musicImageUrl: 'assets/images/music_image4.png',
                        musicTime: '3:10',
                        singerName: 'نام خاواننده شماره چارم',
                        isFavorite: false,
                        favoriteCount: 20,
                        playsCount: '3.60K',
                        repeatCount: 150,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

