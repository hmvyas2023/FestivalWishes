import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shayari_app/lastpage.dart';

class thirdpage extends StatefulWidget {
  List temp;
  int index;

  thirdpage(this.temp, this.index);

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {
  @override
  FlutterTts flutterTts = FlutterTts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFFFD3A5),
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Opacity(
        opacity: 0.90,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  margin:
                      EdgeInsets.only(right: 10, left: 10, top: 50, bottom: 30),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/1014.jpg"),
                          fit: BoxFit.cover),

                      // gradient: LinearGradient(
                      //   colors: [
                      //     Color(0XFFe52165),
                      //     Color(0XFF0d1137)
                      //   ],
                      // ),
                      boxShadow: [
                        BoxShadow(color: Colors.black26, blurRadius: 2)
                      ]),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("${widget.temp[widget.index]}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'fontspring',
                              fontWeight: FontWeight.w300,
                              wordSpacing: 2,
                              fontSize: 30,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  width: 400,
                  height: 200,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/1014.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0XFFe52165),
                                  //     Color(0XFF0d1137)
                                  //   ],
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 2)
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  Clipboard.setData(ClipboardData(
                                          text: '${widget.temp[widget.index]}'))
                                      .then((value) {
                                    Fluttertoast.showToast(
                                        msg: "Copied",
                                        toastLength: Toast.LENGTH_LONG,
                                        gravity: ToastGravity.TOP,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.red,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  });
                                },
                                child: Icon(
                                  Icons.copy,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/1014.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0XFFe52165),
                                  //     Color(0XFF0d1137)
                                  //   ],
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 2)
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    Share.share('${widget.temp[widget.index]}');
                                  });
                                },
                                child: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/1014.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0XFFe52165),
                                  //     Color(0XFF0d1137)
                                  //   ],
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 2)
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (widget.index > 0) {
                                      widget.index--;
                                    } else {
                                      Fluttertoast.showToast(
                                          msg: "No more",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.navigate_before,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/1014.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0XFFe52165),
                                  //     Color(0XFF0d1137)
                                  //   ],
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 2)
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (widget.index < widget.temp.length - 1) {
                                      widget.index++;
                                    } else {
                                      Fluttertoast.showToast(
                                          msg: "No more",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.CENTER,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.red,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/1014.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0XFFe52165),
                                  //     Color(0XFF0d1137)
                                  //   ],
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 2)
                                  ]),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            lastpage(widget.temp, widget.index),
                                      ));
                                },
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("images/1014.jpg"),
                                      fit: BoxFit.cover),
                                  shape: BoxShape.circle,
                                  // gradient: LinearGradient(
                                  //   colors: [
                                  //     Color(0XFFe52165),
                                  //     Color(0XFF0d1137)
                                  //   ],
                                  // ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 2)
                                  ]),
                              child: InkWell(
                                onTap: () async {
                                  await flutterTts.areLanguagesInstalled(
                                      ["en-AU", "hi-IN", "gu-IN"]);
                                  flutterTts.setLanguage("gu-IN");
                                  flutterTts
                                      .speak("${widget.temp[widget.index]}");
                                },
                                child: Icon(
                                  Icons.settings_voice_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              )),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
