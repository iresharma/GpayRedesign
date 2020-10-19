import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvitePage extends StatefulWidget {
  @override
  _InvitePageState createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Invite your friends',
            style: TextStyle(
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.black
            ),
        ),
        elevation: 0,
        leading: IconButton(
          icon: Icon(FlutterIcons.back_ant),
          onPressed: () => Navigator.of(context).pop(),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(FlutterIcons.share_2_fea),
            onPressed: () => print('share'),
            color: Colors.black,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Center(
              child: SvgPicture.asset(
                'assets/SVG/EndSVG.svg',
                width: MediaQuery.of(context).size.width - 40,
              ),
            ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Send your friends an invite and get a cashback of \$1.5',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'ProductSans',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Your invite code:',
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'ProductSans',
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'NF4J5W',
              style: TextStyle(
                fontSize: 50,
                fontFamily: 'ProductSans',
                fontWeight: FontWeight.w200
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                onPressed: () => print('open'),
                color: Colors.blueAccent,
                icon: Icon(
                  FlutterIcons.share_fea,
                  size: 10,
                  color: Colors.white,
                ),
                label: Text(
                  'Share',
                  style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              FlatButton.icon(
                onPressed: () => print('open'),
                color: Color(0xff25D366),
                icon: Icon(
                  FlutterIcons.logo_whatsapp_ion,
                  size: 13,
                  color: Colors.white,
                ),
                label: Text(
                  'WhatsApp',
                  style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Colors.white,
                      fontWeight: FontWeight.w700
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
              OutlineButton.icon(
                onPressed: () => print('open'),
                color: Colors.blueAccent,
                icon: Icon(
                  FlutterIcons.copy_fea,
                  size: 15,
                  color: Colors.redAccent,
                ),
                label: Text(
                  'Copy',
                  style: TextStyle(
                      fontFamily: 'ProductSans',
                      color: Colors.redAccent,
                      fontWeight: FontWeight.w700
                  ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
