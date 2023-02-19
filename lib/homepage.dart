import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'event_containers.dart';
import 'share_bangla.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('6453D1'),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Events',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 107.0),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 600,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60)),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 31.0, left: 20, right: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Upcoming Events',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'View All',
                                  style: TextStyle(
                                    color: HexColor('#7C7C7C'),
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Expanded(
                              child: ListView(
                                children:  [
                                  GestureDetector(

                                      child: EventContainers(),
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Sharebangla()),
                                      );
                                    },

                                  ),

                                  EventContainers(),
                                  EventContainers(),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        //bottom navigation bar with Gnavbar
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: HexColor('#6453D1'),
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (index) => currentIndex = index,
          items: [
            BottomNavigationBarItem(

              icon: Icon(Icons.home, color: HexColor('#6453D1')),
              label: 'home',

            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.ac_unit,
                color: HexColor('#8E8E8E'),
              ),
              label: 'Token',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.content_paste, color: HexColor('#8E8E8E')),
              label: 'Content',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: HexColor('#8E8E8E')),
              label: 'Profile',
            ),
          ],
        ));
  }
}
