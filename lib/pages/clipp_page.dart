
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:custom_clipper/components/account_page.dart';
import 'package:custom_clipper/components/appointment_page.dart';
import 'package:custom_clipper/components/additional_page.dart';
import 'package:custom_clipper/components/moreinfo_page.dart';
import 'package:custom_clipper/components/profile_page.dart';
import 'package:custom_clipper/components/support_page.dart';
import 'package:flutter/material.dart';

class ClippPage extends StatefulWidget {
// ignore: use_key_in_widget_constructors
const ClippPage();
  @override

  State<ClippPage> createState() =>  _ClippPageState();
}

class _ClippPageState extends State<ClippPage> {
 
   var currentPage=0.0;
   int isSelect=0;
   PageController controller=PageController(viewportFraction: .4);
   @override
  void initState(){
    super.initState();
     controller.addListener(() {
       setState(() {
         currentPage=controller.page!;
       });
     });
  }
  List text=['My Profile','Appoin.','Additional services','Support','More Info','Account action',];

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            //CustomClipper
              children: [
               ClipPath(clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                 height: 385,
                 decoration: const BoxDecoration(
                   gradient: LinearGradient(colors: [Colors.black12,Colors.white12]),
                 boxShadow:
                  [BoxShadow(color: Colors.white12,blurRadius: 10,offset: Offset(0,5)),
                 BoxShadow(color: Colors.white12,blurRadius: 5,offset: Offset(5,-5)),
                 ]
                 ),
              ),),
             
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                 height: 380,
                 decoration: const BoxDecoration(color: Colors.white,
                 boxShadow: [BoxShadow(color: Colors.black12,blurRadius: 20,offset: Offset(5,0)),
                 BoxShadow(color: Colors.black12,blurRadius: 20,offset: Offset(5,0)),
                 ]
                 ),
              ),
            ),
             ClipPath(
               clipper: MyClipper(),
               child: Container(
                width: double.infinity,
                 height: 250,
                 decoration: const BoxDecoration(color: Color(0xFF0277BD),
                ),)),
                //Image
                Container(
                  alignment: Alignment.center,
              margin: const EdgeInsets.only(top:60),
              clipBehavior: Clip.antiAlias,
              height: 150,
              decoration: const BoxDecoration(shape:BoxShape.circle,
                color: Colors.blueGrey,
              ),
                child: 
                Image.network('https://freepikpsd.com/file/2019/10/human-face-png-6-Transparent-Images.png',fit: BoxFit.cover,),
              ),

              //CircularProgressIndicator
                const Positioned(left:120,top: 59,
                  child: SizedBox(height: 150,width: 150,
                   child: CircularProgressIndicator(
                     strokeWidth: 5,
                           backgroundColor: Colors.grey,
                           value: .4,
                           valueColor: AlwaysStoppedAnimation(Colors.blueAccent),
                         ),
                 ),
                ),
              //PageView
               Positioned(top: 120,
                 child: Container(
                  
                   width: MediaQuery.of(context).size.width,
                   height: 380,
                  child: PageView.builder(onPageChanged: (index){
                    setState(() {
                      isSelect=index;
                    });
                  },
                  itemCount:text.length,
                  controller: controller,
                   itemBuilder: (context, index) => 
                   Indicator(currentPage - index,text[index],isSelect==index?true:false)),
                   ),
               )  ,
              //  Container(margin: EdgeInsets.only(top:40,left: 30),
              //    height: 50,width: 50,
              //    decoration: BoxDecoration(
              //    color: Colors.blue,borderRadius: BorderRadius.circular(10)
              //  ),child: Icon(Icons.arrow_back_ios,color:Colors.white,),
              //  ) 
                ],
                
          
                 ),
                 SingleChildScrollView(
                   child: Container(
                     width: double.infinity,
                                
                     child: getMyPage(),
                   ),
                 )
            
                 ],
                 ),
);
  }

  getMyPage() {
    // ignore: avoid_print
    print(isSelect);
  switch(isSelect){
    case 0:
    return const ProfilePage();
    case 1: 
    return AppointPage();
    case 2:
    return AdditionalPage();
     case 3:
    return const SupportPage();
     case 4:
    return const InfoPage();
    case 5:
    return const AccountPage();
    
    
    
    
  }
  }
}
//IsActive Color
// ignore: must_be_immutable
class Indicator extends StatelessWidget {
  final bool isActive;
  double val;
// ignore: prefer_typing_uninitialized_variables
var text;
  Indicator(this.val,this.text,this.isActive, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) 
  {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(alignment: Alignment.center,
      width: 100,height: 100,
      decoration: BoxDecoration(shape: BoxShape.circle,
      boxShadow: [const BoxShadow(color: Colors.black12,blurRadius: 10,offset: Offset(0, 5)),
      const BoxShadow(color: Colors.black12,blurRadius: 5,offset: Offset(-5, -5)),
      ],
      color:isActive?const Color(0xFF0277BD):Colors.white),
      child: Text(text,style: TextStyle(fontSize: 22,fontWeight:FontWeight.bold,
      //TextColorChange
      color:isActive?Colors.white:Colors.black)),
    ),
    SizedBox(
      height: val.abs()*160,
    ),
      ],
    );
  }
}
class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    double height=size.height;
    double width=size.width;
    var path=Path();

 
    path.lineTo(0, height-170);
 
    path.quadraticBezierTo(width/2, height, width, height-170);
    path.lineTo(width, 0);
    path.close();
    return path;
     
  }
    @override
    bool shouldReclip(CustomClipper<Path>oldClipper){
      return true;
    }
}