import 'package:flutter/material.dart';

class CardGridView extends StatelessWidget {
  const CardGridView({super.key});

  @override
  Widget build(BuildContext context) {
    var vDivider = const SizedBox(height: 8);

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 5,
                child: Container(
                  height: 400,
                  width: 500,
                  color: const Color(0xffdbd8e3),
                  child: Column(
                    children: [
                      vDivider,
                      const Text(
                        'Device 1',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'My Factory -> Production -> Tank',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 1'),
                                            Icon(
                                              Icons.email_outlined,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 2'),
                                            Icon(
                                              Icons.battery_alert_sharp,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 3'),
                                            Icon(
                                              Icons.ac_unit_sharp,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.timer_rounded),
                                Text('Reported 18 days ago'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 400,
                  width: 500,
                  color: const Color(0xffdbd8e3),
                  child: Column(
                    children: [
                      vDivider,
                      const Text(
                        'Device 2',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'My Factory -> Production -> Tank',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 1'),
                                            Icon(
                                              Icons.ac_unit_sharp,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.timer_rounded),
                                Text('Reported 9 days ago'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 400,
                  width: 500,
                  color: const Color(0xffdbd8e3),
                  child: Column(
                    children: [
                      vDivider,
                      const Text(
                        'Device 3',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'My Factory -> Production -> Tank',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                       color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 1'),
                                            Icon(
                                              Icons.battery_charging_full_sharp,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                       color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 2'),
                                            Icon(
                                              Icons.airplay_sharp,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.timer_rounded),
                                Text('Reported 4 days ago'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 5,
                child: Container(
                  height: 400,
                  width: 500,
                  color: const Color(0xffdbd8e3),
                  child: Column(
                    children: [
                      vDivider,
                      const Text(
                        'Device 4',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'My Factory -> Production -> Tank',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 1'),
                                            Icon(
                                              Icons.wind_power,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 2'),
                                            Icon(
                                              Icons.wifi,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Card(
                                      elevation: 5,
                                      child: Container(
                                        color: const Color(0xfffffafa),
                                        height: 120,
                                        width: 120,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text('Field 3'),
                                            Icon(
                                              Icons.view_in_ar_sharp,
                                              size: 50,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.timer_rounded),
                                Text('Reported 23 days ago'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
