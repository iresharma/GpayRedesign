import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> name = ['Theodore Mason', 'Wendy Patterson', 'Julia Bourgeois', 'Panagiotis Veldhoen', 'Harold Fisher', 'Philip Olsen', 'Gustavo Cortes', 'Kitty Mckinney', 'Ömür Mertoğlu', 'Sadie Thompson', 'عرشيا گلشن', 'طاها نكو نظر', 'Hildegard Thomas', 'Josefina Moreno',
  'Leevi '];

  List<String> photo = ['https://randomuser.me/api/portraits/thumb/men/89.jpg', 'https://randomuser.me/api/portraits/thumb/women/87.jpg', 'https://randomuser.me/api/portraits/thumb/women/0.jpg', 'https://randomuser.me/api/portraits/thumb/men/77.jpg', 'https://randomuser.me/api/portraits/thumb/men/78.jpg', 'https://randomuser.me/api/portraits/thumb/men/37.jpg', 'https://randomuser.me/api/portraits/thumb/men/49.jpg', 'https://randomuser.me/api/portraits/thumb/women/9.jpg', 'https://randomuser.me/api/portraits/thumb/women/75.jpg', 'https://randomuser.me/api/portraits/thumb/women/42.jpg', 'https://randomuser.me/api/portraits/thumb/men/67.jpg', 'https://randomuser.me/api/portraits/thumb/men/21.jpg', 'https://randomuser.me/api/portraits/thumb/women/26.jpg', 'https://randomuser.me/api/portraits/thumb/women/5.jpg', 'https://randomuser.me/api/portraits/thumb/men/42.jpg'];

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 20,
                        right: 30
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\$45,768\n',
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 30,
                                      color: Colors.black
                                  ),
                                ),
                                TextSpan(
                                  text: 'All Balance',
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey.shade500
                                  ),
                                )
                              ]
                            ),
                          ),
                          Text(
                            'June',
                            style: TextStyle(
                                fontFamily: 'ProductSans',
                                fontSize: 15
                            ),
                          ),
                          SizedBox(height: 10,),
                          FloatingActionButton(
                            backgroundColor: Colors.blueAccent,
                            child: Icon(FlutterIcons.google_wallet_faw5d),
                            hoverColor: Colors.blueAccent,
                            onPressed: () => print('hi'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 30, top: 30, bottom: 30),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade200
                              )
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '\$33,563',
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey.shade500
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    width: 49,
                                    color: Color(0xff23d160),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(FlutterIcons.arrow_up_fea, color: Colors.grey.shade200, size: 20,),
                                        SizedBox(height: 10,),
                                        Text(
                                          'Income',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 10,
                                              color: Colors.grey.shade200
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.shade200
                                )
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '\$20,234',
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 10,
                                      color: Colors.grey.shade500
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    width: 49,
                                    color: Color(0xffD22426),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Icon(FlutterIcons.arrow_up_fea, color: Colors.grey.shade200, size: 20,),
                                        SizedBox(height: 10,),
                                        Text(
                                          'Expenses',
                                          style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: Colors.grey.shade200
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Divider(thickness: 1,),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Latest Transactions',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w800,
                          fontSize: 15
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: name.length + 1,
                          itemBuilder: (context, index) {
                            if(index != 0) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(photo[index])
                                        )
                                    ),
                                  )
                                ],
                              );
                            }
                            else {
                              return Text('hi');
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.deepPurple,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
