import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shayari_app/main.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation widthanimation;
  late Animation heightanimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    widthanimation = Tween(begin: 700.0, end: 00.0).animate(controller);
    heightanimation = Tween(begin: 70.0, end: 70.0).animate(controller);

    controller.forward();
    controller.addListener(() {
      setState(() {
        if (controller.isCompleted) {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return homepage();
            },
          ));
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return homepage();
                      },
                    ));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEFEEED),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    height: 70,
                    width: 700,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Center(
                        child: Text("Festival Wishes",
                            style: TextStyle(
                                color: Color(0xff0057A3),
                                fontSize: 40,
                                fontFamily: "fontspring"))),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff0057A3),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  height: heightanimation.value,
                  width: widthanimation.value,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                )
              ],
            ),
          )),
    );
  }
}
