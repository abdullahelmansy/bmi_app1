import 'package:bmi_app1/components/colors.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('My reviews'),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search_outlined,
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
            CoffeeTableInfo(),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

class CoffeeTableInfo extends StatelessWidget {
  const CoffeeTableInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'https://cdn.mos.cms.futurecdn.net/8crVdQF5n2TYR8Rc9Gw4gC-320-80.jpg',
                  width: 65,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coffee Table',
                    style: TextStyle(color: Colors.grey[700], fontSize: 24),
                  ),
                  const Text(
                    '\$ 50.00',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.star,
                color: AppColors.starColor,
              ),
              Icon(
                Icons.star,
                color: AppColors.starColor,
              ),
              Icon(
                Icons.star,
                color: AppColors.starColor,
              ),
              Icon(
                Icons.star,
                color: AppColors.starColor,
              ),
              Icon(
                Icons.star,
                color: AppColors.starColor,
              ),
              const Spacer(),
              const Text(
                '20/03/2020',
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
