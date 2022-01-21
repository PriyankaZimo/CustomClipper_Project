
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdditionalPage extends StatelessWidget {
 List text=['Become a Service \nProvider','Reminder'];
List icons=[Icons.person,Icons.image,];

  AdditionalPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          SizedBox(
            height: 400,
           child: ListView.builder(itemCount: text.length,
             itemBuilder: (context,index)=>Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(margin: const EdgeInsets.all(10),
                  height: 60,width:60,
                   decoration: BoxDecoration(color: const Color(0xFFeeeeef),borderRadius: BorderRadius.circular(10)),
                   child: Icon(icons[index],color: Colors.blue,),
                   ),
                   Text(text[index],style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      const Spacer(),
                  const Icon(Icons.arrow_forward_ios)
                 
               ],
             )),
          )
        ],
      ),

    );
  }
}