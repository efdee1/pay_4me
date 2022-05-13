import 'package:flutter/material.dart';
import 'package:pay_4_me/UI/view/search_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../config/size_config.dart';
import '../../constants/app_colors.dart';

class SearchPage extends StatefulWidget {
  static String routeName = "/ searchPage ";
  const  SearchPage ({Key? key}) : super(key: key);

  @override
  State< SearchPage > createState() =>  _SearchPageState();
}

class _SearchPageState extends State< SearchPage> {

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final heightOpen = MediaQuery.of(context).size.height * 0.95;
    final heightClosed = MediaQuery.of(context).size.height * 0.95;
    SizeConfig().init(context);
    return  Scaffold(
      body: Stack(
          children:  <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child:  Image(image: AssetImage('assets/bg.png',
              ),
                fit: BoxFit.fitHeight, ),
            ),



            Positioned(
              top: 65, left: 20,
              child: Container(
                  height: 65,width: 65,
                  decoration: const BoxDecoration(
                    color: white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                      topLeft:  Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft:  Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/menu.png",height: 39,width: 38,),
                  )),
            ),
            SlidingUpPanel(
              minHeight: heightClosed,
              maxHeight: heightOpen,
              panelBuilder:  (controller)=> SearchPanel(
                controller:controller,
              ),
              borderRadius: const BorderRadius.vertical(top: Radius.circular(40) ),
            ),
          ]
      ),

    );


  }
}
