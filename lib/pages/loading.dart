import 'package:flutter/material.dart';
import 'package:worldTime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // sending req to api for default location and showing that on '/home' route
  void setupWorldTime() async {
    WorldTime ins = WorldTime(
        location: 'Dhaka',
        flag: 'bangladesh.jpg',
        url: 'Asia/Dhaka'); //Africa/Abidjan
    await ins.fetchTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': ins.location,
      'flag': ins.flag,
      'time': ins.time,
      'isDayTime': ins.isDayTime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
