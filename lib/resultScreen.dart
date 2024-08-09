import 'package:bmi_app1/components/colors.dart';
import 'package:flutter/material.dart';

class Resultscreen extends StatelessWidget {
  const Resultscreen({super.key, required this.result});
  final double result;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Your result',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        result < 18.5
                            ? 'Underweight'
                            : result < 24.9
                                ? 'Normal'
                                : result < 29.9
                                    ? 'Overweight'
                                    : 'Obesity',
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style:
                            const TextStyle(color: Colors.white, fontSize: 120),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.newColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Recalculate',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
