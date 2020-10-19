import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_pay_redesign/Views/paymentPage.dart';

class ChatWindow extends StatefulWidget {

  final String name;
  final String photo;

  const ChatWindow({Key key, this.name, this.photo}) : super(key: key);

  @override
  _ChatWindowState createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {

  bool animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(tag: widget.photo,child: Container(
              margin: EdgeInsets.all(10),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.photo)
                  )
              ),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '+91 8582871444',
                    style: TextStyle(
                        fontFamily: 'ProductSans',
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey
                    )
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () => print('hi1'),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 14,
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width/2 - 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$',
                                  style: TextStyle(
                                    fontFamily: 'ProductSans',
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w200
                                  )
                                ),
                                TextSpan(
                                  text: '345',
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'ProductSans',
                                    color: Colors.black,
                                  )
                                )
                              ]
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Received-2nd June',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey.shade700,
                                  fontFamily: 'ProductSans'
                                ),
                              ),
                              Icon(
                                FlutterIcons.arrow_right_fea,
                                size: 20,
                                color: Colors.blueAccent.shade700,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width/2 - 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300, width: 1.2)
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                          fontFamily: 'ProductSans',
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200
                                      )
                                  ),
                                  TextSpan(
                                      text: '4,345',
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontFamily: 'ProductSans',
                                        color: Colors.black,
                                      )
                                  )
                                ]
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Paid-2nd June',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey.shade700,
                                    fontFamily: 'ProductSans'
                                ),
                              ),
                              Icon(
                                FlutterIcons.arrow_right_fea,
                                size: 20,
                                color: Colors.blueAccent.shade700,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 90,
                      width: MediaQuery.of(context).size.width/2 - 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300, width: 1.2)
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                          fontFamily: 'ProductSans',
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200
                                      )
                                  ),
                                  TextSpan(
                                      text: '445',
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontFamily: 'ProductSans',
                                        color: Colors.black,
                                      )
                                  )
                                ]
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Paid-2nd July',
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey.shade700,
                                    fontFamily: 'ProductSans'
                                ),
                              ),
                              Icon(
                                FlutterIcons.arrow_right_fea,
                                size: 20,
                                color: Colors.blueAccent.shade700,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 170,
                      width: MediaQuery.of(context).size.width/2 + 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(width: 1.2, color: Colors.blueAccent.shade200)
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Requesting',
                            style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.w800,
                                fontSize: 15
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            'Bruh! I paid the flat rent this is your half.',
                            style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 13,
                                color: Colors.grey
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\$',
                                      style: TextStyle(
                                          fontFamily: 'ProductSans',
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w200
                                      )
                                  ),
                                  TextSpan(
                                      text: '345',
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontFamily: 'ProductSans',
                                        color: Colors.black,
                                      )
                                  )
                                ]
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Hero(
                                tag: 'letTry',
                                child: FlatButton.icon(
                                  onPressed: () => Navigator.of(context).push(
                                    new MaterialPageRoute(
                                      builder: (_) => PaymentPage(
                                        name: widget.name,
                                        photo: widget.photo,
                                      )
                                    )
                                  ),
                                  color: Colors.blueAccent,
                                  icon: Icon(
                                    FlutterIcons.check_ant,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Pay now',
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
                              ),
                              OutlineButton.icon(
                                onPressed: () => print('open'),
                                color: Colors.blueAccent,
                                icon: Icon(
                                  FlutterIcons.cross_ent,
                                  size: 15,
                                  color: Colors.redAccent,
                                ),
                                label: Text(
                                  'Decline',
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
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if(!animate)...{
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                        bottom: 5
                    ),
                    child: FlatButton(
                      child: Text(
                        'Pay',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.blueAccent,
                      onPressed: () => print('Request'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10,
                        right: 5,
                        top: 5,
                        bottom: 5
                    ),
                    child: FlatButton(
                      child: Text(
                        'Request',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 15,
                            color: Colors.white
                        ),
                      ),
                      color: Colors.blueAccent,
                      onPressed: () => print('Request'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                  )
                }
                else...{
                  IconButton(
                    icon: Icon(FlutterIcons.chevron_right_ent, color: Colors.white,),
                    color: Colors.black,
                    onPressed: () => setState(() => animate = false),
                  )
                },
                GestureDetector(
                  onTap: () => setState(() => animate = true),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    margin: EdgeInsets.only(
                      right: 5
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade500),
                      borderRadius: BorderRadius.circular(500)
                    ),
                    width: animate ? MediaQuery.of(context).size.width - 60 : MediaQuery.of(context).size.width / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Type..',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontFamily: 'ProductSans',
                              fontSize: 15
                          ),
                        ),
                        if(!animate)...{
                          Icon(
                            FlutterIcons.gift_faw,
                            color: Colors.blueAccent.shade700,
                            size: 18,
                          )
                        }
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
