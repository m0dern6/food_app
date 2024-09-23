import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            SizedBox(height: 60), // Adjust this value for top spacing
            _buildNotificationCard(
              context,
              'assets/food.png',
              'Table no 1 Has Placed an Order',
              '3 minutes ago',
              'Quantity: 4',
              'Amount: \$12',
              Icons.info_outline,
              Colors.grey,
            ),
            SizedBox(height: 10), // Spacing between cards
            _buildNotificationCard(
              context,
              'assets/food.png',
              'Table no 5 Has payed the bills',
              '4 minutes ago',
              'Quantity: 1',
              'Amount Received: \$10',
              Icons.circle,
              Colors.green,
            ),
            SizedBox(height: 10), // Spacing between cards
            _buildNotificationCard(
              context,
              'assets/food.png',
              'Table no 4 Has Placed an Order',
              '10 minutes ago',
              'Quantity: 2',
              'Amount: \$6',
              Icons.info_outline,
              Colors.grey,
            ),
            Spacer(),
            Center(
              child: Container(
                width: screenSize.width * 0.8,
                height: 51,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationCard(
    BuildContext context,
    String imageUrl,
    String title,
    String timeAgo,
    String quantity,
    String amount,
    IconData icon,
    Color iconColor,
  ) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Icon(
            icon,
            color: iconColor,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      timeAgo,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      quantity,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  amount,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
