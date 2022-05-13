import 'package:flutter/material.dart';
import 'package:pay_4_me/config/size_config.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../constants/app_colors.dart';
import '../foods.dart';

class Home extends StatefulWidget {
  static String routeName = "/home";
  const Home({Key? key, }) : super(key: key);
  // final ValueNotifier<double> ?notifier;
  // this.notifier

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(-1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  ));
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final heightOpen = MediaQuery.of(context).size.height;
    final heightClosed = MediaQuery.of(context).size.height;
     SizeConfig().init(context);
    return  Scaffold(
      body: Stack(
          children:  <Widget>[
        const Image(image: AssetImage('assets/bg.png',
        ),
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
        top: 65, left: 20,
        child:  SlideTransition(
          position: offsetAnimation,
          child: Container(
            height: 65,width: 65,
            decoration: const BoxDecoration(
            color: white,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            ),
            ),
            child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/menu.png",height: 39,width: 38,),
            )
    ),
        ),),
        const Positioned(
                  top: 150, left: 20,
                  child: Text('Find Your \nChow Now',style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  ),
                  ),
        ),
            SlidingUpPanel(
              minHeight: heightClosed *0.5,
              maxHeight: heightOpen * 0.969,
              panelBuilder:  (controller)=> PanelWidget(
                controller:controller,
              ),
              borderRadius: const BorderRadius.vertical(top:Radius.circular(40) ),
            ),

        ]
        ),

    );


  }
}
