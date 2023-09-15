import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shayari_app/homepage.dart';
import 'package:shayari_app/secondpage.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
    debugShowCheckedModeBanner: false,
  ));
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List list = [
    "Diwali",
    "Holi",
    "Maha Shivratri",
    "Ram Navmi",
    "Navratri",
    "Durga Ashthmi",
    "New Year",
    "bhai duj",
    "Makar sankranti",
    "Janmashtmi",
    "Raksha Bandhan",
    "Ganesh Chaturthi",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ForPermission();
  }

  Future<void> ForPermission() async {
    var status = await Permission.storage.status;
    var status1 = await Permission.camera.status;
    if (status.isDenied || status1.isDenied) {
      Map<Permission, PermissionStatus> statuses = await [
        Permission.camera,
        Permission.storage,
      ].request();

      // We didn't ask for permission yet or the permission has been denied before but not permanently.
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        var result = await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Are you want to exit??"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: Text('No'),
              ),
            ],
          ),
        );
        return result ?? false;
      },
      child: Scaffold(
        //backgroundColor: Color(0xFFFD6585),
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 5,
            right: 5,
            child: Container(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text("Indian Festival Wishes",
                    style: TextStyle(
                        fontFamily: "Brightwall",
                        color: Colors.blueAccent,
                        fontSize: 30)),
              ),
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //     begin: Alignment.topCenter,
                  //     end: Alignment.bottomCenter,
                  //    colors: [Color(0XFFe52165), Color(0XFF0d1137)]),
                  // borderRadius: BorderRadiusDirectional.only(
                  //     bottomEnd: Radius.circular(50),
                  //     bottomStart: Radius.circular(50)),
                  ),
              width: 500,
              height: 120,
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            right: 20,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/1014.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              width: 500,
              height: 800,
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return secondpage(list, index);
                        },
                      ));
                    },
                    title: Opacity(
                      opacity: 0.7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GlassmorphicContainer(
                            width: 800,
                            height: 200,
                            borderRadius: 10,
                            linearGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.white.withOpacity(0.3),
                                  Colors.white.withOpacity(0.1)
                                ],
                                stops: [
                                  0.0,
                                  1.0
                                ]),
                            border: 5,
                            blur: 5,
                            borderGradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.grey.withOpacity(0.1),
                                  Colors.grey.withOpacity(0.1)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(list[index],
                                    style: TextStyle(
                                      fontFamily: "fontspring",
                                      color: Colors.white,
                                      fontSize: 25,
                                    )),
                              ),
                            )),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
