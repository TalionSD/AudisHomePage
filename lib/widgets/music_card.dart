import 'package:audis_home_page/utils/style.dart';
import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  const MusicCard({
    super.key,
    required this.width,
    required this.height,
    required this.musicName,
    required this.singerName,
    required this.isFavorite,
    required this.musicImageUrl,
    required this.musicTime,
    required this.playsCount,
    required this.repeatCount,
    required this.favoriteCount,
  });

  final double width;
  final double height;
  final String musicName;
  final String singerName;
  final bool isFavorite;
  final String musicImageUrl;
  final String musicTime;
  final String playsCount;
  final int repeatCount;
  final int favoriteCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Style.primaryColor,
      ),
      height: height / 5,
      width: width,
      child: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            flex: 7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: width / 5,
                      height: height / 3,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(musicImageUrl),
                      ),
                    ),
                    SizedBox(
                      width: width / 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          musicName,
                          style: TextStyle(
                            color: Style.textColor,
                            fontFamily: 'Vazir',
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              singerName,
                              style: TextStyle(
                                color: Style.textColor,
                                fontFamily: 'Vazir',
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              width: width / 90,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Style.secoundaryColor,
                              ),
                              child: Icon(
                                Icons.bolt,
                                size: 15,
                                color: Style.textColor,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  musicTime,
                  style: TextStyle(
                    color: Style.accentColor,
                    fontFamily: 'Vazir',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height / 100,
          ),
          Flexible(
            flex: 4,
            fit: FlexFit.loose,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.repeat,
                          color: Style.accentColor,
                          size: 20,
                        ),
                        Text(
                          repeatCount.toString(),
                          style: TextStyle(
                            color: Style.accentColor,
                            fontFamily: 'Vazir',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width / 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Style.accentColor,
                          size: 20,
                        ),
                        Text(
                          favoriteCount.toString(),
                          style: TextStyle(
                            color: Style.accentColor,
                            fontFamily: 'Vazir',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Style.accentColor,
                      fontFamily: 'Vazir',
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    text: playsCount,
                    children: const [
                      TextSpan(text: ' پخش'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Style.accentColor,
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.repeat,
                      color: Style.accentColor,
                    ),
                    SizedBox(
                      width: width / 10,
                    ),
                    isFavorite
                        ? Icon(
                            Icons.favorite,
                            color: Style.secoundaryColor,
                          )
                        : Icon(
                            Icons.favorite,
                            color: Style.accentColor,
                          ),
                    SizedBox(
                      width: width / 10,
                    ),
                    Icon(
                      Icons.share,
                      color: Style.accentColor,
                    ),
                  ],
                ),
                Icon(
                  Icons.more_horiz_outlined,
                  color: Style.accentColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
