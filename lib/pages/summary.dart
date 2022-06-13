import 'package:flutter/material.dart';

class SUMMARYPAGE extends StatefulWidget {
  const SUMMARYPAGE({Key? key}) : super(key: key);

  @override
  State<SUMMARYPAGE> createState() => _SUMMARYPAGEState();
}

class _SUMMARYPAGEState extends State<SUMMARYPAGE> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = const [
      DropdownMenuItem(child: Text("Today"), value: "Today"),
      DropdownMenuItem(child: Text("Yesterday"), value: "Yesterday"),
      DropdownMenuItem(child: Text("Tomorrow"), value: "Tomorrow")
    ];
    return menuItems;
  }

  String setValue = 'Today';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'SUMMARY',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w900,
                        fontSize: 25),
                  ),
                  DropdownButton(
                      focusColor: Colors.white,
                      onChanged: (String? newValue) {
                        setState(() {
                          setValue = newValue!;
                        });
                      },
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                      ),
                      value: setValue,
                      items: dropdownItems)
                ],
              ),
            ),
          ),
          Image.asset('assets/Chart.png'),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'BURNT',
                                      style: TextStyle(
                                          fontFamily: 'Lato', fontSize: 16),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Image.asset('assets/Bar1.png')
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      '302',
                                      style: TextStyle(
                                          fontFamily: 'Lato', fontSize: 30),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'kcal',
                                        style: TextStyle(
                                            fontFamily: 'Lato', fontSize: 20),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            margin: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    const Text(
                                      'EATEN',
                                      style: TextStyle(
                                          fontFamily: 'Lato', fontSize: 16),
                                    ),
                                    const SizedBox(height: 10.0),
                                    Image.asset('assets/Bar2.png')
                                  ],
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      '1250',
                                      style: TextStyle(
                                          fontFamily: 'Lato', fontSize: 30),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5.0),
                                      child: Text(
                                        'kcal',
                                        style: TextStyle(
                                            fontFamily: 'Lato', fontSize: 20),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 180,
                    height: 300,
                    child: Card(
                      color: const Color.fromARGB(255, 11, 17, 31),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        // margin: EdgeInsets.only(left: 15.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'WALKING',
                              style: TextStyle(
                                  fontFamily: 'Lato',
                                  color: Colors.blue,
                                  fontSize: 16),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  '5.7',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w900,
                                      fontSize: 40),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 10.0),
                                  child: const Text(
                                    'km',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                            Image.asset('assets/Doughnut.png'),
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
