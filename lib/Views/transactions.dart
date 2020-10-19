import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TransactionPage extends StatefulWidget {
  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'All Transactions',
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
            icon: Icon(FlutterIcons.download_fea),
            onPressed: () => print('share'),
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(FlutterIcons.info_fea),
            onPressed: () => print('share'),
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: transactions.length + 1,
          itemBuilder: (context, index) {
            if(index == 0) {
              return Container(
                  height: 100,
                  child: Column(
                    children: [
                      Text(
                        '\$45,345',
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 50,
                        ),
                      ),
                      Text(
                        'Total transaction amount for this month',
                        style: TextStyle(
                            fontFamily: 'ProductSans',
                            fontSize: 15,
                            color: Colors.grey
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15
                        ),
                        child: Divider(color: Colors.black,),
                      )
                    ],
                  ),
              );
            } else {
              return ListTile(
                isThreeLine: true,
                title: Text(
                    transactions[index - 1].name,
                    style: TextStyle(
                      fontFamily: 'ProductSans',
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        transactions[index - 1].desc,
                        style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 15,
                          color: Colors.grey
                        ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '#${transactions[index - 1].UPI}',
                      style: TextStyle(
                          fontFamily: 'ProductSans',
                          fontSize: 10,
                          color: Colors.black,
                          fontWeight: FontWeight.w200
                      ),
                    ),
                  ],
                ),
                leading: transactions[index - 1].order ? Icon(
                    FlutterIcons.basket_fill_mco,
                    color: Colors.black,
                ) : Icon(
                    FlutterIcons.attach_money_mdi,
                    color: transactions[index - 1].given ? Colors.redAccent : Colors.green
                ),
                trailing: Text(
                  '${transactions[index - 1].given ? '-' : '+'}  \$${transactions[index - 1].amount.toString()}',
                  style: TextStyle(
                    fontFamily: 'ProductSans',
                    fontSize: 20,
                    color: transactions[index - 1].given ? Colors.redAccent : Colors.green
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }


  List<Transactions> transactions = [
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: true
    ),
    Transactions(
        name: 'Merch Shop',
        UPI: '1243GJHasfIUHO',
        amount: 490.0,
        desc: 'Ordered a i love cats T-shirt',
        time: '18:01 2nd June',
        order: true,
        given: true
    ),
    Transactions(
        name: 'Iresh Sharma',
        UPI: '1243GJHGHIUHO',
        amount: 200.0,
        desc: 'Paid for a reason not to be disclosed',
        time: '18:54 2nd June',
        order: false,
        given: false
    ),
  ];

}


class Transactions {

  final String name;
  final String desc;
  final bool order;
  final double amount;
  final String time;
  final String UPI;
  final bool given;

  Transactions({this.UPI, this.name, this.desc, this.order, this.amount, this.time, this.given});

}