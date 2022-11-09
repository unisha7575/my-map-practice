import 'package:flutter/material.dart';
import 'package:practice_detail/detail_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}
String name="nisha";
String address="Tilak Nagar,Katira";
 List<String> names=["nisha","prity","sanjesh","ankit","prabhunath","prahalad","papa","baba"];
 List<String> des=["nisha","prity","sanjesh","ankit","prabhunath","prahalad","papa","baba"];
 List<String> height=["5","7","5","6","5","7","6","7"];

class _MainScreenState extends State<MainScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children:List.generate(names.length,(index) {
          return InkWell(
           onTap: (){
             setState(() {
               Navigator.push(
                   context, MaterialPageRoute(builder: (context)=>
                   DetailScreen(name: names[index],
                   desc: des[index],
                     hei:height[index],
                   )));
             });
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>Discription(Discription2:height[index])));

           },

             child: Container(
               color: (index%2==0)?Colors.greenAccent:Colors.red,
               child: ListTile(
                  title:Text(names[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),

                  subtitle: Text(address,style: TextStyle(color: (index%2==0)?Colors.red:Colors.greenAccent,fontSize: 20,fontWeight: FontWeight.w400)),
                  leading: Icon(Icons.person,size: 40,),
                  trailing:InkWell(
                    onTap: (){
                     setState(() {
                       names.removeAt(index);
                       des.removeAt(index);
                       height.removeAt(index);
                     });
                    },
                      child: Icon(Icons.delete,color:(index%2==0)?Colors.red:Colors.greenAccent,size: 40,)),
                ),
             ),

         );
        },
        )



      )
    );
  }
}
