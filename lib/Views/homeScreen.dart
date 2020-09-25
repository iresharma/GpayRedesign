import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SvgPicture.asset('assets/SVG/google-icon.svg'),
        ),
        elevation: 0,
        title: Text(
          'Google Pay',
          style: TextStyle(
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.black
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/me.png')
                )
              ),
            ),
          )
        ],
      ),
      body: Text('hi'),
    );
  }
}
