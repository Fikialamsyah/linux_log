import 'package:flutter/material.dart';
import 'package:linux_log/model/linuxData.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final LinuxData place;

  DetailPage({@required this.place});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Container(
      child: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              SafeArea(
                child: Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 35),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        place.name,
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                    ),
                    Image.asset(
                      place.logoImages,
                      width: 105,
                      height: 105,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        place.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 150,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'Developer',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              place.developer,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 150,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              'Desktop',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(left: 10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Text(
                              place.desktop,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        padding: EdgeInsets.only(right: 20, left: 20),
                        child: Image.asset(place.desktopImages)),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: FlatButton(
                        color: Colors.black,
                        textColor: Colors.white,
                        splashColor: Colors.yellowAccent,
                        child: Text('Download'),
                        onPressed: () {
                          _launchURl(place.url);
                        },
                      ),
                    )
                  ],
                )),
              ),
            ],
          ),
        ],
      ),
    )));
  }
}

_launchURl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
