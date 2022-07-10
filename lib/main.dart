import 'package:flutter/material.dart';
import 'dart:ui';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Yo, people around you 🔥",
                style: TextStyle(
                    color: Color(0XFFcccccc),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Dehradun",
                style: TextStyle(color: Color(0XFF929A99), fontSize: 20),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/dot_lines.png"),
              SizedBox(
                height: 10,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      "assets/image.png",
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(1),
                      margin: EdgeInsets.only(bottom: 40),
                      width: MediaQuery.of(context).size.width - 50,
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Color(0X66E85353), Color(0X66FFD599)])),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Utkarsh Singh",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Kumanoi"),
                                      style: ElevatedButton.styleFrom(
                                          primary: Color(0XFFFFB54D),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                    )
                                  ],
                                ),
                                Text(
                                  "21 y.o.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                                Text(
                                  "UX Designer",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                                Text(
                                  "2 km away",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/red_heart.png",
                        width: 40,
                        height: 40,
                      ),
                      Text(
                        "Pass",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Image.asset(
                    "assets/golden_heart.png",
                    width: 40,
                    height: 40,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withOpacity(0.6),
        unselectedLabelStyle: TextStyle(color: Colors.black),
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset("assets/note.png"), label: "Swipe"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/global_edit.png",
                color: index == 1
                    ? Color(0XFFFFA930)
                    : Colors.black.withOpacity(0.6),
              ),
              label: "Activity"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/plus.png",
                color: index == 2
                    ? Color(0XFFFFA930)
                    : Colors.black.withOpacity(0.6),
              ),
              label: "Post"),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/message_notif.png",
              color: index == 3
                  ? Color(0XFFFFA930)
                  : Colors.black.withOpacity(0.6),
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/user_tag.png",
                color: index == 4
                    ? Color(0XFFFFA930)
                    : Colors.black.withOpacity(0.6),
              ),
              label: "Profile")
        ],
      ),
    );
  }
}
