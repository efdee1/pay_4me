import 'package:flutter/material.dart';
import 'package:pay_4_me/UI/view/search_page.dart';

import '../config/size_config.dart';
import '../constants/app_colors.dart';
import '../model/food_model.dart';


class AllFoods extends StatelessWidget {
  final String foodName;
  final String  foodPictures;
  final String foodUnit;
  final String foodSlang;
  const AllFoods({Key? key, required this.foodName, required this.foodPictures, required this.foodUnit, required this.foodSlang, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: 100,
      width: 155,
      decoration: BoxDecoration(
        border: Border.all(
            color: boarderColor
        ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child:   Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(

    children: [
          Image.asset(foodPictures,height: 90,width: 107,),
          const SizedBox(height: 16,),
                Text(foodName),
        const SizedBox(height: 5),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('N$foodUnit',style: const TextStyle(
                  color: unitColor
              ),),
              const SizedBox(width:8),
              Text(foodSlang,style: const TextStyle(
                  color: Colors.grey),
              )
            ],
          ),
        ),
          ],
        ),
      ),
    );
  }
}

class PanelWidget extends StatelessWidget {
  final ScrollController? controller;
   const PanelWidget({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: Stack(
        children: [
          ListView(

            controller: controller,
            children: [
              Center(
                child: Container(
                  width: 32,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color:accentColor,
                  ),
                ),
              ),
           Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
             child: Container(
                  color: white,
               child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                       const SizedBox(height: 15,),
                        const Text('All foods',style:  TextStyle(
                         fontSize: 22,
                        fontWeight: FontWeight.w700

                  ),),
                       const SizedBox(height: 15,),
                       GridView.builder(
                        itemCount: foodList.length,
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 17,
                        mainAxisSpacing: 17


                  ),
                  itemBuilder: (BuildContext context, int index) {
                  return AllFoods(
                  foodPictures:foodList[index]['picture'],
                  foodName:foodList[index]['name'],
                  foodUnit: foodList[index]['unit'],
                  foodSlang:foodList[index] ['slang'],
                  );
                        }),
                  ],
                  ),
                  ),
    ),

            ],
          ),
          Positioned(
            bottom:height(25), left: width(120),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/Recta.png",height:height(128),width: 124,),
            ),
          ),
          Positioned(
            bottom:height(65), left: width(150),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/cav.png",height:height(56),width: 56,),
            ),
          ),
          Positioned(
            bottom:height(80), left: width(165),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SearchPage()));
                  },
                  child: Image.asset("assets/sea.png",height:height(24),width: 24,)),
            ),
          ),
        ],
      ),
    );
  }
}