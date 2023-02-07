import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/greeting/greetings.dart';

import '../../constants/constants.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white24,
              ),
              //Get Started
              ClipRRect (

                borderRadius: BorderRadius.only(bottomRight: Radius.circular(80),bottomLeft: Radius.circular(80)),
                child:Container(
                  //
                  padding: EdgeInsets.symmetric(vertical: 100),
                    height: MediaQuery.of(context).size.height/2,

                    width: MediaQuery.of(context).size.width,
                    color:  bgColor,

                        child: Column(

                          children: [
                            Text(greeting(),style: GoogleFonts.acme(fontSize: 30,color: bgWhite),),
                            Text("Welcome to $appName",style: GoogleFonts.acme(fontSize: 30,color: bgWhite),)
                          ],
                        )),
              ),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.8 ,
                  // bottom: MediaQuery.of(context).size.height*0.1,
                  left:MediaQuery.of(context).size.width*0.3 ,
                  right: MediaQuery.of(context).size.width*0.3,
                  child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/login");
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30,vertical: 20),

                  child: Center(child: Text("Get Started",style: GoogleFonts.acme(fontSize: 18,color: bgWhite),)),
                ),

              )),
              Positioned(
                  top: MediaQuery.of(context).size.height*0.3,
                  bottom: MediaQuery.of(context).size.height*0.4,
                  left: MediaQuery.of(context).size.width*0.2,
                  right:  MediaQuery.of(context).size.width*0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),

                child: Image.network('https://images.unsplash.com/photo-1579621970563-ebec7560ff3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vbmV5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',width: MediaQuery.of(context).size.width*0.6,
                    fit:BoxFit.fill,
                ),
              ))
            ],
          ),
        ),
      )
    );
  }
}
