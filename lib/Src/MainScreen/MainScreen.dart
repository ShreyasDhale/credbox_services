import 'package:credbox/Globals/constants.dart';
import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: Text(
          "Credbox Services",
          style: Themes.style
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
              onPressed: () {
                print("Messages");
                Navigator.pushNamed(context, AppRoute.messagesPage);
              },
              child: Image.asset("Assets/Images/conversation.png"))
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          backgroundColor: Colors.green.shade300,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          selectedLabelStyle: Themes.style.copyWith(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          unselectedLabelStyle: Themes.style.copyWith(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "Assets/Images/home.svg",
                  height: 36,
                  width: 36,
                  fit: BoxFit.cover,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "Assets/Images/news.png",
                  height: 36,
                  width: 36,
                  fit: BoxFit.cover,
                ),
                label: "News"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 36,
                  color: Colors.black,
                ),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "Assets/Images/blogs.png",
                  height: 36,
                  width: 36,
                  fit: BoxFit.cover,
                ),
                label: "Blogs"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  "Assets/Images/profile.png",
                  height: 36,
                  width: 36,
                  fit: BoxFit.cover,
                ),
                label: "profile"),
          ]),
      drawer: Drawer(
        backgroundColor: Colors.green.shade200,
        child: Column(
          children: [
            Container(
              height: 160,
              width: 160,
              margin: const EdgeInsets.only(top: 50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(600),
                child: Image.asset(
                  "Assets/Images/credbox.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                "Credbox Services",
                style: Themes.style.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
                child: ListView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, AppRoute.loginPage, (context) => false);
                      },
                      child: Card(
                        elevation: 4,
                        child: Column(
                          children: [
                            ListTile(
                              tileColor: Colors.white,
                              title: Text(
                                "Logout",
                                style: Themes.style,
                              ),
                              leading: Image.asset(
                                "Assets/Images/logout.png",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              height: 3,
                              color: Colors.green.shade300,
                            )
                          ],
                        ),
                      ),
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
