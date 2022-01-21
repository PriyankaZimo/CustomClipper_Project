import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccActionPage extends StatefulWidget {
  const AccActionPage({ Key? key }) : super(key: key);

  @override
  State<AccActionPage> createState() => _AccActionPageState();
}

class _AccActionPageState extends State<AccActionPage> {
  int pos=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back_ios),
      title:Text('Password'),
      ),
      body: 
          Container(
            margin: EdgeInsets.only(top: 20,left: 10,right: 10),
            child: Column(
              children: [
                Expanded(child: getPage()),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Current password'
                  ),
                ),SizedBox(height: 10,),
                   TextFormField(
              decoration: InputDecoration(
                hintText: 'New Password '
              ),
            ), SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Confirm Password'
              ),
            ),
             SizedBox(height: 20,),
             Container(
               padding: EdgeInsets.only(left: 15,top: 10),
               height: 50,width: 100,
               decoration: BoxDecoration(color: Colors.blue,
               borderRadius: BorderRadius.circular(20)
               ),child: Text('Submit',style: TextStyle(color: Colors.white,fontSize:25,fontWeight: FontWeight.bold),),
             )
              ],
            ),
          ),
      
    );
  }

  getPage() {
  switch(pos){
   
  }
  }
}