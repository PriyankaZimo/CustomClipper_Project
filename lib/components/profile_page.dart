import 'package:flutter/material.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
@override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int col=0;
List text=['Basic Information','Location Information','Contact Information','Other Information'];
List icon=[Icons.message_outlined,Icons.location_on,Icons.call,Icons.message_outlined,];
@override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 400,
           child: ListView.builder(itemCount: 4,
             itemBuilder: (context,index)=>
             GestureDetector(onTap: (){
               setState(() {
                 col=index;
                }
                );
             },
               child: Container(
                 margin: const EdgeInsets.all(10),
                 padding: const EdgeInsets.only(right: 10),
                 decoration: BoxDecoration(
                   color: (col==index)?const Color(0xFF0277BD):Colors.white,
                   borderRadius: BorderRadius.circular(20),
                 // ignore: prefer_const_literals_to_create_immutables
                   boxShadow: [
                   const BoxShadow(color: Colors.black12,blurRadius: 10,offset: Offset(0,5)),
                   const BoxShadow(color: Colors.black12,blurRadius: 5,offset: Offset(-5,-5)),
                   ]
                 ),
                   child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                       Container(margin: const EdgeInsets.all(10),
                       height: 60,width:60,
                       decoration: BoxDecoration(color: const Color(0xFFeeeeef),
                       borderRadius: BorderRadius.circular(10)),
                       child: Icon(icon[index],size: 30,color: Colors.blue,),
                       ),
                       Text(text[index],style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                       const Spacer(),
                       const Icon(Icons.arrow_forward_ios)
                   ],
                 ),
             
                         
               
             
                        ),
             )),
          )
        ],
      ),

    );
  }
}