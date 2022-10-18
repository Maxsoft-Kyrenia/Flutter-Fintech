import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:Fintech/Screens/Notification.dart';
import 'package:Fintech/Screens/Profile.dart';
import 'package:Fintech/Screens/Swap.dart';
import 'package:Fintech/Screens/Trend.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screens = [
    Home(),
    SwapScreen(),
    TrendScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homepage',
      theme: ThemeData(fontFamily: 'BrownBold'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0XFFB151E34),
        appBar: AppBar(
          leading: Icon(IconlyLight.category),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: (() => {}), icon: Icon(IconlyLight.notification))
          ],
          elevation: 0,
        ),
        body: screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            enableFeedback: false,
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: Color(0XFFB151E34), // <-- This works for fixed
            selectedItemColor: Color(0XFFB2558DB),
            unselectedItemColor: Color(0XFFBB3C7D9),
            iconSize: 24,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  activeIcon: Icon(IconlyBold.home),
                  icon: Icon(IconlyLight.home),
                  label: 'Home',
                  backgroundColor: Colors.blueGrey),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.swap_horiz,
                  size: 30,
                ),
                label: 'Icon',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.trending_up_rounded,
                    size: 28,
                  ),
                  label: 'Trend'),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.notification),
                label: 'Notifications',
                activeIcon: Icon(IconlyBold.notification),
              ),
              BottomNavigationBarItem(
                icon: Icon(IconlyLight.profile),
                label: 'User',
                activeIcon: Icon(IconlyBold.profile),
              )
            ]),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fintech',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'BrownBold'),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color(0XFFB151E34),
        appBar: AppBar(
          leading: Icon(IconlyLight.category),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
                onPressed: (() => {}), icon: Icon(IconlyLight.notification))
          ],
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0XFFB273046),
              Color(0XFFB2B4476),
              Color(0XFFB388094)
            ]),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Total Balance',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w200),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                        const Text(
                          '\$168,899.00',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'BrownBold',
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          width: 108,
                          decoration: BoxDecoration(
                              color: Color(0XFFB3d6a8f),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.trending_up_rounded,
                                size: 12,
                                color: Color(0XFFB42a1a6),
                              ),
                              Text(
                                '67%',
                                style: TextStyle(
                                    fontSize: 10, color: Color(0XFFB42a1a6)),
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                0,
                                0,
                                6,
                                0,
                              )),
                              Text(
                                'Bu Hafta',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: const [
                              Icon(
                                IconlyLight.wallet,
                                color: Colors.white,
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                0,
                                8,
                                0,
                                0,
                              )),
                              Text(
                                'Para Yatir',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFB374D80),
                              borderRadius: BorderRadius.circular(10)),
                          height: 70,
                          width: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: const [
                              Icon(
                                IconlyLight.graph,
                                color: Colors.white,
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                0,
                                8,
                                0,
                                0,
                              )),
                              Text(
                                'Iś Lemler',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFB374D80),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: const [
                              Icon(
                                IconlyLight.profile,
                                color: Colors.white,
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                0,
                                8,
                                0,
                                0,
                              )),
                              Text(
                                'Traderlar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFB374D80),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 70,
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: const [
                              Icon(
                                IconlyLight.user,
                                color: Colors.white,
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(
                                0,
                                8,
                                0,
                                0,
                              )),
                              Text(
                                'Robotlar',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xFFB374D80),
                              borderRadius: BorderRadius.circular(15)),
                          height: 70,
                          width: 70,
                        ),
                      ]),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Discont Up To',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const Text(
                            '50% for New Users',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const Text(
                            '24 Aug 2022',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w100),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            decoration: BoxDecoration(
                                color: Color(0XFFB313F58),
                                borderRadius: BorderRadius.circular(12)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  'HEMEN BAŚLA',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.white),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(
                                  0,
                                  0,
                                  6,
                                  0,
                                )),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(0XFFB32456E),
                      borderRadius: BorderRadius.circular(12)),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(
                    16,
                    20,
                    16,
                    10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Öne Çikar Traderlar',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        'Tümü',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 16, 6),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0XFFB273046),
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.all(12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/images/murat1.jpeg',
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Murat',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                    Text(
                                      'Baślamiś',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.trending_up_rounded,
                                      size: 12,
                                      color: Color(0XFFB42a1a6),
                                    ),
                                    Text(
                                      '67%',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0XFFB42a1a6)),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color(0XFFB273046),
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'assets/images/murat1.jpeg',
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Murat',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                    Text(
                                      'Baślamiś',
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 12, 0)),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.trending_up_rounded,
                                      size: 12,
                                      color: Color(0XFFB42a1a6),
                                    ),
                                    Text(
                                      '67%',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Color(0XFFB42a1a6)),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      )),
                  child: Container(
                      child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(24, 20, 24, 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Canyi Fiyatlar',
                              style: TextStyle(fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'SATIŠ',
                                  style: TextStyle(fontSize: 11),
                                ),
                                Padding(
                                    padding: EdgeInsets.fromLTRB(14, 0, 14, 0)),
                                Text(
                                  'ALTIŠ',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(12, 12, 12, 4),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0XFFBEEEEEE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFBd2e2d4),
                                        borderRadius: BorderRadius.circular(6)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.trending_up_rounded,
                                      size: 14,
                                      color: Color(0xFFB4fdb62),
                                    ),
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 16, 0)),
                                  Text('EUR'),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFBFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.swap_horiz,
                                      size: 14,
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text('TRY'),
                                ]),
                              ),
                              Container(
                                child: Row(children: const [
                                  Text(
                                    '1.3333',
                                    style: TextStyle(color: Color(0xFFB4fdb62)),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text(
                                    '1.3333',
                                    style: TextStyle(color: Color(0xFFB4fdb62)),
                                  )
                                ]),
                              )
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(12, 2, 12, 4),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0XFFBEEEEEE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(250, 238, 209, 205),
                                        borderRadius: BorderRadius.circular(6)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.trending_down_rounded,
                                      size: 14,
                                      color: Color.fromARGB(250, 216, 49, 38),
                                    ),
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 16, 0)),
                                  Text('EUR'),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFBFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.swap_horiz,
                                      size: 14,
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text('GBP'),
                                ]),
                              ),
                              Container(
                                child: Row(children: const [
                                  Text(
                                    '1.3437',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(249, 184, 73, 65)),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text(
                                    '1.3333',
                                    style: TextStyle(color: Color(0xFFB4fdb62)),
                                  )
                                ]),
                              )
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(12, 2, 12, 4),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0XFFBEEEEEE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color:
                                            Color.fromARGB(250, 238, 209, 205),
                                        borderRadius: BorderRadius.circular(6)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.trending_down_rounded,
                                      size: 14,
                                      color: Color.fromARGB(250, 216, 49, 38),
                                    ),
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 16, 0)),
                                  Text('EUR'),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFBFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.swap_horiz,
                                      size: 14,
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text('USD'),
                                ]),
                              ),
                              Container(
                                child: Row(children: const [
                                  Text(
                                    '1.3437',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(249, 184, 73, 65)),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text(
                                    '1.3333',
                                    style: TextStyle(color: Color(0xFFB4fdb62)),
                                  )
                                ]),
                              )
                            ]),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(12, 2, 12, 4),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Color(0XFFBEEEEEE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Row(children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFBd2e2d4),
                                        borderRadius: BorderRadius.circular(6)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.trending_up_rounded,
                                      size: 14,
                                      color: Color(0xFFB4fdb62),
                                    ),
                                  ),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 16, 0)),
                                  Text('EUR'),
                                  const Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFFBFFFFFF),
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    padding: EdgeInsets.all(4),
                                    child: const Icon(
                                      Icons.swap_horiz,
                                      size: 14,
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text('NZD'),
                                ]),
                              ),
                              Container(
                                child: Row(children: const [
                                  Text(
                                    '1.3638',
                                    style: TextStyle(color: Color(0xFFB4fdb62)),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.fromLTRB(0, 0, 10, 0)),
                                  Text(
                                    '1.4343',
                                    style: TextStyle(color: Color(0xFFB4fdb62)),
                                  )
                                ]),
                              )
                            ]),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
