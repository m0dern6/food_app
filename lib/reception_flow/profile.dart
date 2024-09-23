import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/colors.dart';
import 'package:food_app/constants/order.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Color getStatusColor(String status) {
    switch (status) {
      case 'Occupied':
        return Color(0xffBDBDDB);
      case 'Empty':
        return Color(0xffBDDBBD);
      case 'To Clean':
        return Color(0xffE6B2B2);
      case 'Order Placed':
        return Color(0xffE6E6B2);
      default:
        return Color(0xffBDDBBD);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: primaryColor),
        backgroundColor: secondaryColor,
        toolbarHeight: screenHeight * 0.1,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
              child: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                width: screenWidth * 0.08,
                height: screenWidth * 0.08,
              ),
            ),
            Text('En'),
            Icon(Icons.keyboard_arrow_down_outlined),
          ],
        ),
        actions: [
          const Icon(Icons.notifications_outlined),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.15,
              color: const Color(0xffFCF8F8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Restaurant Tables',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Icon(Icons.search)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text('Occupied'), Text('3')],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text('Empty'), Text('3')],
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.3,
                        height: screenHeight * 0.05,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Text('To Clean'), Text('3')],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenWidth < 600
                      ? 2
                      : 4, // Adjust number of columns based on screen width
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  childAspectRatio: 1.0, // Aspect ratio of each item
                ),
                itemCount: orders.length,
                itemBuilder: (context, i) {
                  return Container(
                    decoration: BoxDecoration(
                      color: getStatusColor(orders[i]['status']),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                orders[i]['title'],
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                              Icon(Icons.info_outline)
                            ],
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [Text('Status')],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
