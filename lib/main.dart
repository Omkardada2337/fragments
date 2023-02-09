import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(
    home: Myapp(),
        debugShowCheckedModeBanner: false,
  ));
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        extendBodyBehindAppBar: true,

        appBar: AppBar(title: Text("WhatsApp", style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.grey),),
          backgroundColor: Colors.black87,
        toolbarHeight: 100,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
          bottom: TabBar(tabs: [
            Icon(Icons.camera),
            Text("Chats",style: TextStyle(fontSize: 18),),
            Text("Status",style: TextStyle(fontSize: 18),),
            Text("Calls",style: TextStyle(fontSize: 18,),),
          ],

            labelPadding: EdgeInsets.symmetric(horizontal: 25,),
            indicatorColor: Colors.green,
            isScrollable: true,

            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.green
            ),
            indicatorWeight: 5,



          ),
        ),
        body:TabBarView(


          children: [
            Center(child: Lottie.asset("animations/camera.json",height: 300,width: 300,fit: BoxFit.cover,repeat:true,reverse: true),),
            Center(child: Lottie.asset("animations/chats.json",height: 300,width: 300,fit: BoxFit.cover,repeat:true,reverse: true),),
            Center(child: Lottie.asset("animations/status.json",height: 300,width: 300,fit: BoxFit.cover,repeat:true,reverse: true),),
            Center(child: Lottie.asset("animations/callss.json",height: 300,width: 300,fit: BoxFit.cover,repeat:true,reverse: true),)

          ],

        )


      ),
      length: 4,
      initialIndex: 1,

    );
  }
}