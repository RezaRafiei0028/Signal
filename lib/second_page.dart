import 'package:flutter/material.dart';
import 'package:signal_vip_4/custom_widgets/post_widgets.dart';

class SecondPage extends StatelessWidget {
  final list1 = ['s', 'a', 'c'];
  final list2 = [
    'برای 4 دی SafeMoon: سیگنال خرید ',
    'برای 4 دی ALchemy Pay: سیگنال خرید ',
    'برای 4 دی Cosmos: سیگنال خرید '
  ];
  final list3 = [
    'فروش روی 59،26',
    'فروش روی 91،6',
    'فروش روی 38،7',
  ];
  final list4 = ['خرید روی 31،41', 'خرید روی 85،5', 'خرید روی 79،11'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('VIP اخبار و سیگنال'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  GetPostWidgets(
                      imageName: list1[0],
                      signalName: list2[0],
                      sell: list3[0],
                      buy: list4[0]),
                  GetPostWidgets(
                      imageName: list1[1],
                      signalName: list2[1],
                      sell: list3[1],
                      buy: list4[1]),
                  GetPostWidgets(
                      imageName: list1[2],
                      signalName: list2[2],
                      sell: list3[2],
                      buy: list4[2]),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
