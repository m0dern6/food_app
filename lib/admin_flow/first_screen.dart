import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/colors.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Color(0xff34C759)),
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
            const SizedBox(width: 10),
            const Spacer(),
            Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: buttonColor,
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.notifications_on_outlined),
                    SizedBox(width: 5),
                    Text(
                      'Call Waiter',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: buttonColor,
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.receipt_long_outlined),
                    SizedBox(width: 5),
                    Text(
                      'Receipt',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildCategoryButton('Appetizers', constraints),
                        _buildCategoryButton('Entrees', constraints),
                        _buildCategoryButton('Sides', constraints),
                        _buildCategoryButton('Desserts', constraints),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: const Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Appetizers',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(height: 10),
                        _buildFoodItemCard(constraints),
                        _buildFoodItemCard(constraints),
                        _buildFoodItemCard(constraints),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: double.infinity,
                    height: 60,
                    color: const Color(0xffE7F8DD),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: const [
                          Text('1 Item Selected',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                          Spacer(),
                          Text('View Order',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategoryButton(String text, BoxConstraints constraints) {
    return Container(
      width: constraints.maxWidth * 0.2,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _buildFoodItemCard(BoxConstraints constraints) {
    return Card(
      shadowColor: Colors.transparent,
      color: const Color(0xffFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/food.png',
                width: constraints.maxWidth * 0.25,
                height: constraints.maxWidth * 0.25,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Fried Hot Chicken',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '\$ 16.22',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.green[700],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Savory stir-fried noodles tossed with tender chicken, crisp vegetables.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/icons/info.png'),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/icons/leaf.png'),
                          ),
                        ],
                      ),
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
