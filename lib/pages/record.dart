import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RECORDPAGE extends StatefulWidget {
  const RECORDPAGE({Key? key}) : super(key: key);

  @override
  State<RECORDPAGE> createState() => _RECORDPAGEState();
}

class _RECORDPAGEState extends State<RECORDPAGE> {
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
        // backgroundColor: Colors.grey[100],
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'SLEEP',
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
          SvgPicture.asset('assets/Barchart.svg'),
          SizedBox(
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const Text('SLEEP SCORE',
                style: TextStyle(fontSize: 16,
                fontWeight: FontWeight.bold,
                color:  Color.fromARGB(255, 11, 17, 31),
                fontFamily: 'Lato'),),
                Text('74',
                style:TextStyle(
                  fontSize: 150,
                  fontFamily:'Lato',
                  color:Colors.blue[900],
                  fontWeight: FontWeight.w900
            
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                      const  Text('M',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16
                        ),),
                        const SizedBox(height:5.0),
                        SvgPicture.asset('assets/mon.svg')
                      ],
                    ),
                    Column(
                      children: [
                     const   Text('T',
                          style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16
                        )),
                         const SizedBox(height:5.0),
                        SvgPicture.asset('assets/tue.svg')
                      ],
                    ),
                    Column(
                      children: [
                      const  Text('W',
                          style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16
                        )),
                         const SizedBox(height:5.0),
                        SvgPicture.asset('assets/wed.svg')
                      ],
                    ),
                    Column(
                      children: [
                  const  Text('T',
                          style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16
                        )),
                         const SizedBox(height:5.0),
                        SvgPicture.asset('assets/thursday.svg')
                      ],
                    ),
                    Column(
                      children: [
                      const  Text('F',
                          style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16
                        )),
                         const SizedBox(height:5.0),
                        SvgPicture.asset('assets/fri.svg')
                      ],
                    )
                  ],
                )
              ],
            ),
          )
         
        ],
      ),
    );
  }
}
