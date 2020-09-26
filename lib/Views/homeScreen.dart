import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> name = ['Theodore Mason', 'Wendy Patterson', 'Julia Bourgeois', 'Panagiotis Veldhoen', 'Harold Fisher', 'Philip Olsen', 'Gustavo Cortes', 'Kitty Mckinney', 'Ömür Mertoğlu', 'Sadie Thompson', 'عرشيا گلشن', 'طاها نكو نظر', 'Hildegard Thomas', 'Josefina Moreno', 'Leevi Thomas'];

  List<String> photo = ['https://randomuser.me/api/portraits/thumb/men/89.jpg', 'https://randomuser.me/api/portraits/thumb/women/87.jpg', 'https://randomuser.me/api/portraits/thumb/women/0.jpg', 'https://randomuser.me/api/portraits/thumb/men/77.jpg', 'https://randomuser.me/api/portraits/thumb/men/78.jpg', 'https://randomuser.me/api/portraits/thumb/men/37.jpg', 'https://randomuser.me/api/portraits/thumb/men/49.jpg', 'https://randomuser.me/api/portraits/thumb/women/9.jpg', 'https://randomuser.me/api/portraits/thumb/women/75.jpg', 'https://randomuser.me/api/portraits/thumb/women/42.jpg', 'https://randomuser.me/api/portraits/thumb/men/67.jpg', 'https://randomuser.me/api/portraits/thumb/men/21.jpg', 'https://randomuser.me/api/portraits/thumb/women/26.jpg', 'https://randomuser.me/api/portraits/thumb/women/5.jpg', 'https://randomuser.me/api/portraits/thumb/men/42.jpg'];

  int _index = 0;

  List<String> brand = ['spotify.com', 'flipkart.com', 'amazon.com', 'airtel.com', 'vistaprint.com', 'zomato.com', 'swiggycustomercarenumber.in', 'foodpanda.pk', 'uber.com', 'ubereats.com', 'jiosaavn.com', 'lenskart.com', 'coolwinks.com', 'apple.com', 'netflix.com'];

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
          height: MediaQuery.of(context).size.height * 2.2,
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
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                    left: 0,
                    right: 0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Latest Transactions',
                          style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.w800,
                            fontSize: 15
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
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
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(photo[index - 1])
                                        )
                                    ),
                                  ),
                                  Text(
                                    '${name[index - 1].split(' ')[0][0]} ${name[index - 1].split(' ')[1][0]}',
                                    style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey.shade800
                                    ),
                                  )
                                ],
                              );
                            }
                            else {
                              return Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 10,),
                                    CircularBorder(
                                      width: 2,
                                      size: 40,
                                      color: Colors.black,
                                      icon: Icon(FlutterIcons.plus_ant, color: Colors.blueAccent),
                                    ),
                                    SizedBox(height: 10,),
                                    Text(
                                      'New',
                                      style: TextStyle(
                                          fontFamily: 'ProductSans',
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey.shade800
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Notifications',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.w800,
                            fontSize: 15
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Stepper(
                      physics: NeverScrollableScrollPhysics(),
                      type: StepperType.vertical,
                      controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                        return Row(
                          children: <Widget>[
                            Container(
                              child: null,
                            ),
                            Container(
                              child: null,
                            ),
                          ],
                        );
                      },
                      currentStep: _index,
                      onStepTapped: (index) {
                        setState(() {
                          _index = index;
                        });
                      },
                      steps: <Step>[
                        Step(
                          title: Text(
                            'Iresh Sharma sent you a new funds request',
                            style:  TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w700,
                              fontSize: 15
                            ),
                          ),
                          subtitle: Text(
                            '5 MINS AGO',
                            style:  TextStyle(
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                                color: Colors.grey.shade500
                            ),
                          ),
                          content: Container(
                            height: 120,
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RichText(
                                  text: TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '\$4,768\n',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 30,
                                              color: Colors.black
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Via Credit Card',
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
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FlatButton.icon(
                                        onPressed: () => print('open'),
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
                                    OutlineButton.icon(
                                      onPressed: () => print('open'),
                                      color: Colors.blueAccent,
                                      icon: Icon(
                                        CupertinoIcons.conversation_bubble,
                                        size: 15,
                                        color: Colors.blueAccent,
                                      ),
                                      label: Text(
                                        'Open',
                                        style: TextStyle(
                                            fontFamily: 'ProductSans',
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.w700
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          isActive: true
                        ),
                        Step(
                            isActive: true,
                            title: Text(
                              'Iresh Sharma sent you a new funds request',
                              style:  TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15
                              ),
                            ),
                            subtitle: Text(
                              '5 MINS AGO',
                              style:  TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Colors.grey.shade500
                              ),
                            ),
                            content: Container(
                              height: 120,
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '\$4,768\n',
                                            style: TextStyle(
                                                fontFamily: 'ProductSans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 30,
                                                color: Colors.black
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Via Credit Card',
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlatButton.icon(
                                        onPressed: () => print('open'),
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
                                      OutlineButton.icon(
                                        onPressed: () => print('open'),
                                        color: Colors.blueAccent,
                                        icon: Icon(
                                          CupertinoIcons.conversation_bubble,
                                          size: 15,
                                          color: Colors.blueAccent,
                                        ),
                                        label: Text(
                                          'Open',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              color: Colors.blueAccent,
                                              fontWeight: FontWeight.w700
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                        ),
                        Step(
                            isActive: true,
                            title: Text(
                              'Iresh Sharma sent you a new funds request',
                              style:  TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15
                              ),
                            ),
                            subtitle: Text(
                              '5 MINS AGO',
                              style:  TextStyle(
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: Colors.grey.shade500
                              ),
                            ),
                            content: Container(
                              height: 120,
                              padding: EdgeInsets.all(10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: '\$4,768\n',
                                            style: TextStyle(
                                                fontFamily: 'ProductSans',
                                                fontWeight: FontWeight.w400,
                                                fontSize: 30,
                                                color: Colors.black
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Via Credit Card',
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
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlatButton.icon(
                                        onPressed: () => print('open'),
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
                                      OutlineButton.icon(
                                        onPressed: () => print('open'),
                                        color: Colors.blueAccent,
                                        icon: Icon(
                                          CupertinoIcons.conversation_bubble,
                                          size: 15,
                                          color: Colors.blueAccent,
                                        ),
                                        label: Text(
                                          'Open',
                                          style: TextStyle(
                                              fontFamily: 'ProductSans',
                                              color: Colors.blueAccent,
                                              fontWeight: FontWeight.w700
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15)
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Businessess',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.w800,
                            fontSize: 15
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        'Get amazing offer by using google pay',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                            color: Colors.grey.shade600
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/2 -20,
                      child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 0
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: brand.length + 1,
                          itemBuilder: (context, index) {
                            if(index != brand.length) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(4),
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: NetworkImage('https://logo.clearbit.com/${brand[index]}')
                                        )
                                    ),
                                  ),
                                  Text(
                                    brand[index] == 'swiggycustomercarenumber.in' ? 'Swiggy' : '${brand[index].split('.')[0]}',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade800
                                    ),
                                  )
                                ],
                              );
                            } else {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 4,),
                                  CircularBorder(
                                    width: 2,
                                    size: 40,
                                    color: Colors.black,
                                    icon: Icon(FlutterIcons.more_horiz_mdi, color: Colors.blueAccent),
                                  ),
                                  SizedBox(height: 4,),
                                  Text(
                                    'More',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade800
                                    ),
                                  )
                                ],
                              );
                            }
                          }
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 0,
                      right: 0
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Promotions',
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w800,
                              fontSize: 15
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Just for fun, from us!',
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: Colors.grey.shade600
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 20,
                                    right: 10,
                                    top: 10,
                                    bottom: 10
                                  ),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          fit: BoxFit.fitHeight,
                                          image: AssetImage('assets/images/trophy.png')
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Text(
                                    'Rewards',
                                    style: TextStyle(
                                        fontFamily: 'ProductSans',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey.shade800
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          fit: BoxFit.contain,
                                          image: AssetImage('assets/images/price-tag.png')
                                      )
                                  ),
                                ),
                                Text(
                                  'Offers',
                                  style: TextStyle(
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade800
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Divider(),
                    ListTile(
                      title: Text(
                        'ALL TRANSACTIONS',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade700
                        ),
                      ),
                      leading: Icon(FlutterIcons.ios_options_ion, color: Colors.black,),
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                      dense: true
                    ),
                    Divider(),
                    ListTile(
                        title: Text(
                          'CHECK BALANCE',
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade700,
                          ),
                        ),
                        leading: Icon(FlutterIcons.wallet_ant, color: Colors.black,),
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                        dense: true
                    ),
                    Divider(),
                    ListTile(
                        title: Text(
                          'INVITE A FRIEND',
                          style: TextStyle(
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade700
                          ),
                        ),
                        leading: Icon(FlutterIcons.heart_ant, color: Colors.black,),
                        subtitle: Text('Refer a friend and earn \$1.5'),
                        contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                        dense: true
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}



class CircularBorder extends StatelessWidget {

  final Color color;
  final double size;
  final double width;
  final Widget icon;

  const CircularBorder({Key key, this.color = Colors.blue, this.size = 70, this.width = 7.0, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          icon == null ? Container() : icon,
          CustomPaint(
            size: Size(size, size),
            foregroundPainter: new MyPainter(
                completeColor: color,
                width: width),
          ),
        ],
      ),
    );
  }
}


class MyPainter extends CustomPainter {
  Color lineColor =  Colors.transparent;
  Color completeColor;
  double width;
  MyPainter(
      { this.completeColor, this.width});
  @override
  void paint(Canvas canvas, Size size) {
    Paint complete = new Paint()
      ..color = completeColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    Offset center = new Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    var percent = (size.width *0.001) / 2;

    double arcAngle = 2 * pi * percent;
    print("$radius - radius");
    print("$arcAngle - arcAngle");
    print("${radius / arcAngle} - divider");

    for (var i = 0; i < 8; i++) {
      var init = (-pi / 2)*(i/2);

      canvas.drawArc(new Rect.fromCircle(center: center, radius: radius),
          init, arcAngle, false, complete);
    }


  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}