import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Sharebangla extends StatefulWidget {
  const Sharebangla({Key? key}) : super(key: key);

  @override
  State<Sharebangla> createState() => _SharebanglaState();
}

class _SharebanglaState extends State<Sharebangla> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 343,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
                child: Image.asset(
                  '/Users/samstickkz/Documents/flutter/dev/cryptope/images/bgimg.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 61.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 30,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#EBE8FD'),
                      ),
                      child: const Center(
                          child: Text(
                        'Party',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 79,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#EBE8FD'),
                      ),
                      child: const Center(
                          child: Text(
                        'Rock',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor('#EBE8FD'),
                      ),
                      child: const Center(
                          child: Text(
                        'Helloween',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: HexColor('6453D1'),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Text('Friday, 27 Feb 2023'),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Descriptions',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                          'Lorem ipsum dolor sit amet consectetur. Vulputate quisque purus vitae at diam viverra. Lobortis nunc consequat magna est montes. Sem vulputate pharetra suscipit malesuada. Vitae tellus aliquet aliquet eget iaculis porttitor. Tellus id risus velit leo auctor penatibus id egestas. Vitae ut pharetra in viverra vitae at sed eu. Tortor nulla duis fermentum fames diam tellus orci.egestas. Vitae ut pharetra in viverra vitae at sed eu. Tortor nulla duis fermentum fames diam tellus orci.')
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 150.0),
            child: Center(
              child: Container(
                height: 84,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFBDBDBD),
                        blurRadius: 6,
                        spreadRadius: 1,
                        offset: Offset(0, 6)),
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text(
                            'Share Bangla Concert',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'Share Bangla Concert',
                                style: TextStyle(
                                  color: HexColor('#6453D1'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
                child: Container(
                    decoration: const BoxDecoration(),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ))),
          ),
        ],
      ),
    );
  }
}
