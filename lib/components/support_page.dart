
import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({ Key? key }) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  List text=['Legal Policy','Terms& Conditions','Privacy Policy',];
  List icons=[Icons.person,Icons.image,Icons.message_outlined];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        
        children: [
          SizedBox(
            height: 400,
           child: ListView.builder(itemCount: text.length,
             itemBuilder: (context,index)=>Row(
              
               children: [
                 Container(margin: const EdgeInsets.all(10),
                  height: 60,width:60,
                   decoration: BoxDecoration(color:const Color(0xFFeeeeef),borderRadius: BorderRadius.circular(10)),
                   child: Icon(icons[index],color: Colors.blue,),
                   ),
                   Text(text[index],style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),   const Spacer(),
                  const Icon(Icons.arrow_forward_ios)
                 
               ],
             )),
          )
        ],
      ),

    );
  }
}