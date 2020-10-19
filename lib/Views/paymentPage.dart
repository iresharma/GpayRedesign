import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PaymentPage extends StatefulWidget {

  final String name;
  final String photo;

  const PaymentPage({Key key, this.name, this.photo}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Hero(
          tag: 'letTry',
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    border: Border.all(color: Colors.grey.shade200.withOpacity(0.3), width: 10)
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(widget.photo),
                      fit: BoxFit.fill
                    ),
                    borderRadius: BorderRadius.circular(150),
                    border: Border.all(color: Colors.white, width: 7)
                  ),
                  height: 200,
                  width: 200,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '\$345',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 40,
                  color: Colors.white
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Paying to ${widget.name}',
                style: TextStyle(
                  fontFamily: 'ProductSans',
                  fontSize: 15,
                  color: Colors.white.withOpacity(0.6)
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width/2 + 35,
                child: FlatButton(
                  padding: const EdgeInsets.only(
                    top: 5,
                    bottom: 5
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  color: Colors.blue.shade400,
                  onPressed: () => print('hi'),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 10,
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
                                image: NetworkImage('http://logo.clearbit.com/kotak.com')
                            )
                        ),
                      ),
                      Text(
                        'Kotak Mahindra Bank',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 15,
                          color: Colors.white
                        ),
                      ),
                      Icon(
                        FlutterIcons.arrow_right_fea,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
