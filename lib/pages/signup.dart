import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SIGNUPPage extends StatelessWidget {
  
  const SIGNUPPage({ Key? key }) : super(key: key);



  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.0),
              // padding: EdgeInsets.only(),
              child: const Text('First step to\n healthy lifestyle',
              textAlign: TextAlign.center,
              style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w900,
                          fontSize: 30),),
            ),


          
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Background2.png'),
              fit: BoxFit.contain
              )),
              child: Center(
                child: SvgPicture.asset('assets/yoga.svg',
                // width: 300,
          ),
              ),
        ),



             Padding(
               padding: const EdgeInsets.only(left:20.0, right: 20.0),
               child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: null, 
                   style: OutlinedButton.styleFrom(
                     primary: Colors.black,
                  fixedSize: const Size(350, 50),
                   side:const BorderSide(color: Colors.blue),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(25)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SvgPicture.asset('assets/fbook.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text('CONNECT WITH FACEBOOK',
                        style: TextStyle(
                          fontFamily: 'Lato',
                       color: Colors.blue[900],
                       fontSize: 16
                   )),
                    )
                  
                    ],
                  )),

                  const SizedBox(height: 15),
                  
                        OutlinedButton(onPressed: null, 
                   style: OutlinedButton.styleFrom(
                     primary: Colors.black,
                     side:const BorderSide(color: Colors.blue),
                  fixedSize: const Size(350, 50),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(25)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    SvgPicture.asset('assets/google.svg'),
                    Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: Text('CONNECT WITH GOOGLE',
                   style: TextStyle(
                     fontFamily: 'Lato',
                       color: Colors.blue[900],
                       fontSize: 16
                   ),),
                    )
                    ],
                  ))
                ]),
             ),



              RichText(
                text:  TextSpan(
                  text: 'By Signing in you agree to ',
                  style:const TextStyle(
                    fontFamily: "Lato",
                    color: Colors.black,
                    fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(text: 'Term of Service',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontFamily: 'Lato',
                         fontSize: 14
                      ))
                    ]
                ) ),
         ],
        ),
      ),
    );
  }
}

