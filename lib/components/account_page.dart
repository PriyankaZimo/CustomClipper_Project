import 'package:custom_clipper/components/listpages/account_action.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
   List text=['Password','Deactive my Account','Logout',];
  List icons=[Icons.password,Icons.person,Icons.logout];
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.all(10),
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
                  GestureDetector(onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>AccActionPage()));
                  },
                    child: const Icon(Icons.arrow_forward_ios))
                 
               ],
             )),
          )
        ],
      ),

    );
  }
}