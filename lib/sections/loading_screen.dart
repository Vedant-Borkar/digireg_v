import 'package:digireg/main.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // getting the size of the window
    mq = MediaQuery.of(context).size; 

    return Scaffold(
      backgroundColor: Colors.blue[50],
      body : Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: mq.width * 0.3, right: mq.width * 0.3,top: mq.height * 0.2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40), // Image border
              child: SizedBox.fromSize(
                size: Size.fromRadius(80), // Image radius
                child: Image.asset("assets/logo.png",fit: BoxFit.cover,),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: mq.height * 0.03),
            child: Text(
              "DigiReg",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: mq.height * 0.06),
            child: Text(
              "General Store Management App",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            )
          ),
          Container(
            margin: EdgeInsets.only(top: mq.height * 0.13, left: mq.width * 0.2),
            child: LinearPercentIndicator(
              width: mq.width * 0.6,
              lineHeight: 14.0,
              animation: true,
              animationDuration: 2000,
              percent: 1.0,
              barRadius: Radius.circular(10.0),
              backgroundColor: Colors.grey[300],
              progressColor: Colors.blue[900],
              onAnimationEnd: (){
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );  
              },
            ),
          ),
        ],
      ),
    );
  }
}