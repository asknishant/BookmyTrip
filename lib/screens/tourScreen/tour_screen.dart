import 'package:bookmytrip/screens/tourScreen/dot_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TourScreen extends StatefulWidget {
  @override
  _TourScreenState createState() => _TourScreenState();
}

class _TourScreenState extends State<TourScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/cloud1.png'),
                ),
                Expanded(
                  child: Image.asset('assets/images/cloud2.png'),
                )
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CarouselSlider(
              options: CarouselOptions(height: 200.0),
              items: [
                'assets/images/paris.jpg',
                'assets/images/ny.jpg',
              ].map((e) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              e,
                            ),
                          ),
                          // color: Colors.amber,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.symmetric(horizontal: .350),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DotSlider(
                isOn: false,
              ),
              DotSlider(
                isOn: true,
              ),
              DotSlider(
                isOn: false,
              )
            ],
          ),
          Text(
            'Enjoy your trip',
            style: GoogleFonts.inder(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30, top: 10, left: 10, right: 10),
            child: Text(
                'As One of the world\'s leading online travel agencies.Book my trip is here to help you to plan perfect trip',
                textAlign: TextAlign.center,
                style: GoogleFonts.inder(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                )),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
            child: new InkWell(
              onTap: () => print('hello'),
              child: new Container(
                width: 350.0,
                height: 50.0,
                decoration: new BoxDecoration(
                  color: Colors.blueAccent,
                  border: new Border.all(color: Colors.white, width: 2.0),
                  borderRadius: new BorderRadius.circular(10.0),
                ),
                child: new Center(
                  child: new Text(
                    'Get Started',
                    style: new TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
