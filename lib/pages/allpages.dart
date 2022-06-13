import 'package:flutter/material.dart';
import 'package:healthapp/pages/discovery.dart';
import 'summary.dart';
import 'package:healthapp/pages/record.dart';

class ALLPAGE extends StatefulWidget {
  const ALLPAGE({Key? key}) : super(key: key);

  @override
  State<ALLPAGE> createState() => _ALLPAGEState();
}

class _ALLPAGEState extends State<ALLPAGE> {
 
    int _selectedindex=0;
    
  static const List<Widget> _widgetOptions = <Widget>[
    SUMMARYPAGE(),
    RECORDPAGE(),
    DISCOVERYPAGE()

    ];
    void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue[900],
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: '',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
