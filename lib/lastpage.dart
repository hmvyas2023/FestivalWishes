import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:share_plus/share_plus.dart';
import 'package:widgets_to_image/widgets_to_image.dart';
import 'package:device_info_plus/device_info_plus.dart';

class lastpage extends StatefulWidget {
  List temp;
  int index;

  lastpage(this.temp, this.index);

  @override
  State<lastpage> createState() => _lastpageState();
}

class _lastpageState extends State<lastpage> {
  Color pickerColor = Color(0xffffffff);
  Color currentColor = Color(0xffffffff);
  Color backgroundColor = Color(0xff443a49);
  String emoji = "😀 😃 😄 😁 😆";
  String fontfamily = "fontspring";

  List<Color> colorlist = [
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red,
    Colors.pink,
    Colors.green
  ];

  List currentemoji = [
    "",
    "😀 😃 😄 😁 😆",
    "🥲 🥹 😞 😔",
    "😣 😖 😫 😩 🥺 😢",
    "😸 😹 😻 😼 😽",
    "🤓 😎 🥸 🤩 🥳",
    "😕 🙁 ☹ 😣 😖"
  ];

  List font = ["OoohBaby", "Brightwall", "fontspring"];

  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  double currentfont = 30;

  String folderpath = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _createFolder();
  }

  _createFolder() async {
    // Get device information
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;

    // Print device information
    print('Device Name: ${androidInfo.model}');
    print('Device Version: ${androidInfo.version.sdkInt}');

    if (androidInfo.version.sdkInt <= 30) {
      final folderName = "Creative Shayri";

      final path = Directory("storage/emulated/0/DCIM/$folderName");

      if ((await path.exists())) {
        // TODO:
        print("exist");
      } else {
        // TODO:
        print("not exist");
        path.create();
      }
      setState(() {
        folderpath = path.path;
      });
      print("====$folderpath");
    } else {
      final folderName = "Creative Shayri";

      final path = Directory("storage/emulated/0/$folderName");

      if ((await path.exists())) {
        // TODO:
        print("exist");
      } else {
        // TODO:
        print("not exist");
        path.create();
      }
      setState(() {
        folderpath = path.path;
      });
      print("====$folderpath");
    }
  }

  WidgetsToImageController controller = WidgetsToImageController();

  //Instance of DeviceInfoPlugin
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF000046),
      appBar: AppBar(backgroundColor: Color(0XFF000046)),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              child: WidgetsToImage(
                controller: controller,
                child: Opacity(
                  opacity: 0.9,
                  child: Container(
                    height: double.infinity,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        right: 10, left: 10, top: 50, bottom: 30),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(20)),
                      color: backgroundColor,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                            "$emoji\n ${widget.temp[widget.index]} \n$emoji",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: currentColor,
                              fontFamily: "$fontfamily",
                              fontWeight: FontWeight.w300,
                              wordSpacing: 2,
                              fontSize: currentfont,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                width: 600,
                height: 200,
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 60,
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
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2)
                                      ]),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              content: SingleChildScrollView(
                                                child: ColorPicker(
                                                    pickerColor: pickerColor,
                                                    onColorChanged:
                                                        changeColor),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  child: const Text('Got it'),
                                                  onPressed: () {
                                                    setState(() =>
                                                        currentColor =
                                                            pickerColor);
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      "Text Color",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "fontspring"),
                                    )),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 60,
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
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2)
                                      ]),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              content: SingleChildScrollView(
                                                  child: ColorPicker(
                                                      pickerColor: pickerColor,
                                                      onColorChanged:
                                                          changeColor)),
                                              actions: [
                                                ElevatedButton(
                                                  child: const Text('Got it'),
                                                  onPressed: () {
                                                    setState(() =>
                                                        backgroundColor =
                                                            pickerColor);
                                                    Navigator.of(context).pop();
                                                  },
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      "Background",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "fontspring"),
                                    )),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 60,
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
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2)
                                      ]),
                                  child: InkWell(
                                    onTap: () {
                                      controller.capture().then((value) async {
                                        print("==$value");

                                        String imagename =
                                            "Image${Random().nextInt(10000)}.jpg";

                                        String imageppath =
                                            "$folderpath/$imagename";

                                        File file = File(imageppath);

                                        List<int> aa = value as List<int>;

                                        file.writeAsBytes(aa);
                                        await file.create();

                                        Share.shareFiles(['${file.path}'],
                                            text:
                                                'https://play.google.com/store/apps/details?id=com.dream11.fantasy.cricket.football.kabaddi');
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      "Share",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "fontspring"),
                                    )),
                                  )),
                            ),
                          ]),
                    ),
                    Expanded(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 60,
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
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2)
                                      ]),
                                  child: InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return StatefulBuilder(
                                            builder: (context, setState1) {
                                              return Container(
                                                height: 150,
                                                child: Slider(
                                                  min: 10,
                                                  max: 40,
                                                  value: currentfont,
                                                  divisions: 30,
                                                  label:
                                                      "${currentfont.round().toString()}",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      currentfont = value;
                                                    });
                                                    print("====${value}");
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      );
                                    },
                                    child: Center(
                                        child: Text(
                                      "Text Size",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "fontspring"),
                                    )),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 60,
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
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2)
                                      ]),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: 200,
                                              color: Colors.white38,
                                              child: ListView.builder(
                                                itemCount: currentemoji.length,
                                                itemBuilder: (context, index) {
                                                  return ListTile(
                                                      onTap: () {
                                                        setState(() {
                                                          emoji = currentemoji[
                                                              index];
                                                          Navigator.pop(
                                                              context);
                                                        });
                                                      },
                                                      title: Container(
                                                        child: Center(
                                                          child: Text(
                                                              "${currentemoji[index]}",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      20)),
                                                        ),
                                                        height: 50,
                                                        width: double.infinity,
                                                        decoration: BoxDecoration(
                                                            border: Border(
                                                                bottom: BorderSide(
                                                                    color: Colors
                                                                        .black12,
                                                                    width: 2))),
                                                      ));
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      "Emoji",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "fontspring"),
                                    )),
                                  )),
                            ),
                            Expanded(
                              child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 60,
                                  width: 60,
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
                                        BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 2)
                                      ]),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              height: 200,
                                              child: GridView.builder(
                                                itemCount: font.length,
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 1),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder: (context, index) {
                                                  return InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          fontfamily =
                                                              font[index];
                                                          Navigator.pop(
                                                              context);
                                                        });
                                                      },
                                                      child: Center(
                                                          child: Text(
                                                        "${font[index]}",
                                                        style: TextStyle(
                                                            fontSize: 30),
                                                      )));
                                                },
                                              ),
                                            );
                                          },
                                        );
                                      });
                                    },
                                    child: Center(
                                        child: Text(
                                      "Font",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: "fontspring"),
                                    )),
                                  )),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
