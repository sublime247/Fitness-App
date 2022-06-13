import 'package:flutter/material.dart';

class DISCOVERYPAGE extends StatefulWidget {
  const DISCOVERYPAGE({ Key? key }) : super(key: key);

  @override
  State<DISCOVERYPAGE> createState() => _DISCOVERYPAGEState();
}

class _DISCOVERYPAGEState extends State<DISCOVERYPAGE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          children: [
           const SizedBox(height: 15.0,),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left:10.0,right:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:const [
                    Text('DISCOVERY',
                     style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w900,
                          fontSize: 25),),
                    SizedBox(
                      width: 100,
                      height: 30,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          suffixIcon:Icon(Icons.search),
                          border: OutlineInputBorder(
                            
                            borderRadius: BorderRadius.all(
                              Radius.circular(10)
                            )
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          const  SizedBox(height: 35.0,),
              Image.asset('assets/Content1.png'),
           const   SizedBox(height: 30.0,),
              Image.asset('assets/Content2.png'),
              // SizedBox(height: 0.0,)
          ],
        ),
      ),
      
    );
  }
}
