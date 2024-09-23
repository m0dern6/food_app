import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/colors.dart';

class KitchenHome extends StatefulWidget {
  const KitchenHome({super.key});

  @override
  State<KitchenHome> createState() => _KitchenHomeState();
}

class _KitchenHomeState extends State<KitchenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Color(0xff34C759)),
        backgroundColor: secondaryColor,
        toolbarHeight: 73,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                width: 32,
                height: 32,
              ),
            ),
            const Text('En'),
            const Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
        actions: [
          const Icon(Icons.notifications_outlined),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double padding = screenWidth * 0.05;
          double containerWidth = screenWidth * 0.9;

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Order List',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: containerWidth,
                      height: 152,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFBF5),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: padding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Table 01 Placed an Order !',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '3 items',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Order Placed at 2:00PM',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: buttonColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  width: 101,
                                  height: 36,
                                  child: Center(
                                      child: Text(
                                    'View Order',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: containerWidth,
                      height: 152,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFBF5),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: padding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Table 01 Placed an Order !',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '3 items',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Order Placed at 2:00PM',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 24 / 14),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: buttonColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  width: 101,
                                  height: 36,
                                  child: Center(
                                      child: Text(
                                    'View Order',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: containerWidth,
                      height: 152,
                      decoration: BoxDecoration(
                          color: Color(0xffFFFBF5),
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: padding),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Table 01 Placed an Order !',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              '3 items',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Order Placed at 2:00PM',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      height: 24 / 14),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: buttonColor,
                                      borderRadius: BorderRadius.circular(4)),
                                  width: 101,
                                  height: 36,
                                  child: Center(
                                      child: Text(
                                    'View Order',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
