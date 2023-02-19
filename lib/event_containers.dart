import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class EventContainers extends StatefulWidget {
  const EventContainers({Key? key}) : super(key: key);

  @override
  State<EventContainers> createState() => _EventContainersState();
}

class _EventContainersState extends State<EventContainers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
      ),
      child: Container(
        height: 246,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: HexColor('FFFFFF'),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 0.8,
                spreadRadius: 0.1,
                offset: Offset(0.5, 1)),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                          height: 135,
                          width: 330,
                          child: Image.asset(
                            'images/btc.png',
                            fit: BoxFit.contain,
                          )),
                      Container(
                        //push container down
                        margin: const EdgeInsets.only(top: 36),
                        height: 100,
                        //make the width of the container as the width of the image

                        width: 330,

                        // text: 'Hello World',
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 50, left: 13.0, right: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 60,
                                height: 22,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: const Text(
                                    'Earn Coin',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: 126,
                                height: 27,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.5),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Center(
                                  child: const Text(
                                    'Friday, 27 Jan 2023',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Grow the coins',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'New world of coins',
                          style: TextStyle(
                            color: HexColor('#6453D1'),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'Lorem ipsum dolor sit ametcon sectetur Lectus.',
                          style: TextStyle(color: HexColor('#686868')),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          'curabitur',
                          style: TextStyle(
                            color: HexColor('#686868'),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
