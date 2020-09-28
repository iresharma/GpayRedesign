import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
          children: [
            Hero(tag: widget.photo,child: Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(widget.photo)
                  )
              ),
            )),
            Hero(tag: widget.name,child: Text(
                widget.name,
              style: TextStyle(
                fontFamily: 'ProductSans',
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black
              ),
              )
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
              color: Colors.blue,
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
                      color: Colors.blueAccent.shade700,
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
                      color: Colors.blueAccent.shade700,
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
                    color: Colors.blueAccent.shade700,
                    onPressed: () => setState(() => animate = false),
                  )
                },
                Container(
                  padding: EdgeInsets.all(6),
                  margin: EdgeInsets.only(
                    right: 5
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade500),
                    borderRadius: BorderRadius.circular(500)
                  ),
                  width: MediaQuery.of(context).size.width / 3,
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
                      Icon(
                        FlutterIcons.gift_faw,
                        color: Colors.blueAccent.shade700,
                        size: 18,
                      )
                    ],
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
