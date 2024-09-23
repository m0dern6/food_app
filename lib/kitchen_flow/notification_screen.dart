import 'package:flutter/material.dart';
import 'package:food_app/colors.dart';

class KitchenNotificationScreen extends StatefulWidget {
  const KitchenNotificationScreen({super.key});

  @override
  State<KitchenNotificationScreen> createState() =>
      _KitchenNotificationScreenState();
}

class _KitchenNotificationScreenState extends State<KitchenNotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double padding = screenWidth * 0.05;
          double containerWidth = screenWidth * 0.9;

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding, vertical: 10),
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
                  containerWidth,
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
                  containerWidth,
                ),
                Spacer(),
                Center(
                  child: Container(
                    width: screenWidth * 0.8,
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
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some bottom spacing if needed
              ],
            ),
          );
        },
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
    double containerWidth,
  ) {
    return Container(
      width: containerWidth,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
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
