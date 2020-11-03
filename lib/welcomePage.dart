import 'package:flutter/material.dart';
import 'package:linux_log/gridDashboard.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {
  String _name = '';
  
  final _nameKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Stack(
            children: <Widget>[
              SafeArea(
                child:Container(
                  width: double.infinity,
                  height: 200.0,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60.0),
                          bottomRight: Radius.circular(60.0))),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80),
                child: Center(
                    child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Welcome Linuxian',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Image.asset(
                      'assets/images/linux-logo.png',
                      width: 150,
                    ),
                  ],
                )),
              )
            ],
          ),

          // Container Judul dan tagline
          Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text(
                      'LinuxLog',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      '"Upgrade Your Knowledge"',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),

          // Container TextField Name
          Container(
            padding: EdgeInsets.only(right: 100, left: 100),
            child: Center(
                child: Container(
              child: Form(
                  key: _nameKey,
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.black,
                      hintText: 'Your Names'
                    ),
                    textAlign: TextAlign.center,
                    // Validasi nama 
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter Your Name'; // jika kosong
                      } else {
                        return null;
                      }
                    },
                    onChanged: (String value) { 
                      _name = value;
                    },
                  )),
            )),
          ),

          // Container Button 
          Container(
            child: Center(
              child: FlatButton(
                  child: Text('Get Started'),
                  minWidth: 200,
                  color: Colors.black,
                  textColor: Colors.white,
                  // Event ketika di tekan
                  onPressed: () {
                    if (_nameKey.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return GridDashboard(); // pindah halaman homepage dan passing data nama
                      }));
                    }
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
