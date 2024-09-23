import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/colors.dart';

class KitchenOrder extends StatefulWidget {
  const KitchenOrder({super.key});

  @override
  State<KitchenOrder> createState() => _KitchenOrderState();
}

class _KitchenOrderState extends State<KitchenOrder> {
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
            const Icon(Icons.arrow_back),
            const SizedBox(width: 10),
            const Text('Order List'),
            const SizedBox(width: 10),
            Container(
              width: 75,
              height: 26,
              decoration: BoxDecoration(
                color: const Color(0xffCD8079),
                borderRadius: BorderRadius.circular(9),
              ),
              child: const Center(
                child: Text(
                  '3 Items',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double padding = screenWidth * 0.05;
          double containerWidth = screenWidth * 0.8;

          return SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Table 01 Order',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '01',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Fried Hot Chicken',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Note from the Customer',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.green,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          width: containerWidth,
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xffFFFBF5),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Less hot but not very less, only moderate.',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Divider(
                    color: Colors.grey[300],
                    height: 1,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: padding),
                  leading: Text(
                    '02',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  title: const Text(
                    'Fresh Strawberry',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Divider(
                    color: Colors.grey[300],
                    height: 1,
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: padding),
                  leading: Text(
                    '03',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  title: const Text(
                    'Oatmeal Breakfast',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(padding),
                  child: Divider(
                    color: Colors.grey[300],
                    height: 1,
                  ),
                ),
                SizedBox(height: 20), // Add some space before the footer
                Column(
                  children: [
                    Text(
                      'Estimated Time Given to the customer is 45 mins',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(
                          left: padding, right: padding, bottom: padding),
                      child: Container(
                        width: double.infinity,
                        height: 51,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Order Completed',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
