import 'package:flutter/material.dart';
import 'package:pay_4_me/UI/view/search_screen.dart';

import '../../config/size_config.dart';
import '../../constants/app_colors.dart';
import '../../model/result_model.dart';

class SearchPanel extends StatelessWidget {
  final ScrollController? controller;
  const SearchPanel({Key? key, this.controller}) : super(key: key);

  @override
      Widget build(BuildContext context) {
        return ListView(

          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32 ,0,32,12),
              child: Row(
                children: [
                  Image.asset("assets/sea.png", height: height(24), width: 24,),
                  const SizedBox(width: 25,),
                  const Text('Search for stuff',style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.26,
                      color: accentColor
                  ),),
                  const Spacer(),
                  Image.asset(
                    "assets/cancel.png", height: height(24), width: 24,),
                ],
              ),
            ),
            Container(
            color: white,
            child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
             const Divider(thickness: 1,),
             const SizedBox(height: 15,),
            Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                children: [
               Row(
                   children: [
                 SizedBox(
                  width: 127,
                  height: 38,
                   child: ElevatedButton(
                          onPressed: () {},
                       style: ElevatedButton.styleFrom(
                        primary: primaryColor,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25), // <-- Radius
                         ),
                        ),
                     child: Row(
                        children: [
                     const Text('Traditional',style: TextStyle(
                      fontSize: 12,
                      color: textColor
                      ),),
                      const Spacer(),
                      Image.asset(
                        "assets/cancel.png", height: height(14), width: 14,),
                        ],
                       ),
                        ),
                        ),
                        const SizedBox(width: 15,),
                   SizedBox(
                    width: 107,
                    height: 38,
                    child: ElevatedButton(
                      onPressed: () {},
                            style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25), // <-- Radius
                            ),
                            ),
                      child: Row(
                          children: [
                          const Text('Salads',style: TextStyle(
                          fontSize: 12,
                          color: textColor
                         ),),
                          const Spacer(),
                          Image.asset(
                          "assets/cancel.png", height: height(14), width: 14,),
                          ],
                            ),
                      ),
                   ),
                   ],
                            ),
                    const SizedBox(height: 16,),
                Row(
                    children: [
                    SizedBox(
                    width: 147,
                    height: 38,
                         child: ElevatedButton(
                           onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25), // <-- Radius
                                ),
                                ),
                             child: Row(
                              children: [
                              const Text('Internaltional',style: TextStyle(
                              fontSize: 12,
                              color: textColor
                              ),
                              ),
                              const Spacer(),
                              Image.asset(
                              "assets/cancel.png", height: height(14), width: 14,),
                              ],
                                ),
                                ),
                                ),
                                const SizedBox(width: 15,),
                                SizedBox(
                                  width: 107,
                                  height: 38,
                                  child: ElevatedButton(
                                    onPressed: () {},
                              style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25), // <-- Radius
                                    ),
                                    ),
                                    child: Row(
                                    children: [
                                      const Text('Salads',style: TextStyle(
                                    fontSize: 12,
                                    color: textColor
                                    ),),
                                     const Spacer(),
                                    Image.asset(
                                    "assets/cancel.png", height: height(14), width: 14,),
                                    ],
                                   ),
                                    ),
                                    ),

        ],
        )
        ],
        ),
        ),
                          const SizedBox(height: 12,),
                          const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32.0),
                          child: Text('Results',style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700

                            ),
                            ),
                            ),
                              const SizedBox(height: 40,),
                              Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                child: SizedBox(
                                 height: 700,
                                 child: ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: resultList.length,
                                    itemBuilder: (BuildContext context, int index) {
                                  return Results(
                                    foodPictures:resultList[index]['picture'],
                                    foodName:resultList[index]['name'],
                                    foodUnit: resultList[index]['unit'],
                                    foodSlang:resultList[index] ['slang'],
                                    direction:resultList[index] ['direction'],
                                   );
                                 }),
                               ),
                             ),
                             ]))

                  ],
        );
      }
}
