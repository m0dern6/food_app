import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_app/colors.dart';

class ToastAndBottomSheetScreen extends StatelessWidget {
  const ToastAndBottomSheetScreen({Key? key}) : super(key: key);

  void showToast(BuildContext context) {
    Fluttertoast.showToast(
      msg: "This is a toast message",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      backgroundColor: Color(0xffBEEECA),
      textColor: Colors.black,
      fontSize: 16.0,
    ).then((value) {
      if (value == null) {
        // If the toast is not shown, print an error message
        print("Toast not shown");
      }
    });
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20),
          height: 299,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'Change Status?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                ),
                Text(
                  'This will clear any orders or receipt present in the table',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: buttonColor,
                    ),
                    child: Center(
                      child: Text(
                        'Change Status',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    height: 51,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: secondaryColor,
                    ),
                    child: Center(
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast and Bottom Sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => showToast(context),
              child: const Text('Show Toast'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showBottomSheet(context),
              child: const Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
