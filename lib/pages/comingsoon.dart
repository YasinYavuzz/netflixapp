import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflixapp/provider/comingsoon_provider.dart';
import 'package:netflixapp/widgets/bottomnavigationbar/bottomnavigationbar.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ComingSoonPage extends StatefulWidget {
  const ComingSoonPage({super.key});

  @override
  State<ComingSoonPage> createState() => _ComingSoonPageState();
}

class _ComingSoonPageState extends State<ComingSoonPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, CproviderItem item, widget) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, left: 15),
              width: 125,
              height: 21,
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset("assets/comingsoon/bell.png"),
                    decoration: BoxDecoration(
                        color: Color(0xffF50914), shape: BoxShape.circle),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 7),
                      child: Text(
                        "Notifications",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: '.SF Pro Display',
                            fontSize: 16.91,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 160,
              child: ListView.builder(
                itemCount: item.movieList!.length,
                itemBuilder: (context, index) {
                  return Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 12),
                      width: 375,
                      height: 65,
                      decoration: BoxDecoration(color: Color(0xff424242)),
                      child: Row(
                        children: [
                          Image.asset("${item.movieList![index]["image"]}"),
                          Container(
                            margin: EdgeInsets.only(
                              left: 4.h,
                            ),
                            child: Container(
                              width: 200,
                              height: 46,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${item.movieList![index]["favorite"]}",
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontFamily: '.SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 1.8.h),
                                  ),
                                  Text(
                                    "${item.movieList![index]["movie_name"]}",
                                    style: TextStyle(
                                        color:
                                            Color(0xffFFFFFF).withOpacity(0.8),
                                        fontFamily: '.SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 1.8.h),
                                  ),
                                  Text(
                                    "${item.movieList![index]["date"]}",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.48),
                                        fontFamily: '.SF Pro Display',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 1.3.h),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ));
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: double.infinity,
              height: 195,
              child: Image.asset(
                "assets/comingsoon/main_movie.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 140,
              height: 40,
              margin: EdgeInsets.only(top: 20, left: 230),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/comingsoon/bell-fill.png"),
                      Text(
                        "Remind Me",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.83),
                            fontSize: 11.13,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/comingsoon/share.png"),
                      Text(
                        "Share",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.83),
                            fontSize: 11.13,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 13, left: 12),
              width: 354,
              height: 117,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Season 1 Coming December 14",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.83),
                        fontSize: 11.4,
                        fontFamily: '.SF Pro Display',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Castle & Castle",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.66,
                        fontFamily: '.SF Pro Display',
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.83),
                        fontSize: 10.8,
                        fontFamily: '.SF Pro Display',
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.justify,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Steamy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.4,
                          fontFamily: '.SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Image.asset("assets/comingsoon/dot.png"),
                      Text(
                        "Soapy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.4,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset("assets/comingsoon/dot.png"),
                      Text(
                        "Slow Burn",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.4,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset("assets/comingsoon/dot.png"),
                      Text(
                        "Suspenseful",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.4,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset("assets/comingsoon/dot.png"),
                      Text(
                        "Teen",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.4,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w600),
                      ),
                      Image.asset("assets/comingsoon/dot.png"),
                      Text(
                        "Mystery",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 11.4,
                            fontFamily: '.SF Pro Display',
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 88,
              child: ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Image.asset(
                      "assets/comingsoon/movie3.png",
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            )
          ],
        ),
        // bottomNavigationBar: bottomNavigationBar(),
      );
    }));
  }
}
