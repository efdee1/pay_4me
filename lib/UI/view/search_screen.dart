import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class Results extends StatelessWidget {
  final String foodName;
  final String  foodPictures;
  final String foodUnit;
  final String foodSlang;
  final String direction;
  const Results({Key? key, required this.foodName, required this.foodPictures, required this.foodUnit, required this.foodSlang, required this.direction, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Image.asset(foodPictures,height: 90,width: 107,),
          const SizedBox(width: 16,),
          Column(
              children: [
                Text(foodName,style: const TextStyle(
                    fontSize: 14,
                ),
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('N$foodUnit',style: const TextStyle(
                        color: unitColor
                    ),),
                    const SizedBox(width: 8,),
                    Text(foodSlang,style: const TextStyle(
                        color: Colors.grey),
                    )
                  ],
                ),
              ]
          ),
          const Spacer(),
          Image.asset(direction,height: 24,width: 14.57,),
        ],
      ),
    );
  }
}

class Tags extends StatelessWidget {
  final String tagName;
  final String  cancelTagPicture;
  const Tags({Key? key, required this.tagName, required this.cancelTagPicture, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {  },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:primaryColor,
        ),
        child: Row(
          children: [
            Text(tagName),
            const SizedBox(width: 16,),
            Image.asset(cancelTagPicture,height: 12,width: 12,),

          ],
        ),
      ),
    );
  }
}