import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main()=>runApp(Teamapp());

class Teamapp extends StatelessWidget{//statelesswidget kar dio londe

  //yaha pa apna list  jo bna rha he hum so that hum iss list ka cards count kar sake
  List<String> details=[
    "akshay","yashank","simran","unknown","sagnik","anmol","sujeet"
      // info(name:'akshay',flag:'pic1.png'),
      // info(name:'yashank',flag:'pic1.png'),
      // info(name:'simran',flag:'pic1.png'),
      // info(name:'unknown',flag:'pic1.png'),
      // info(name:'sagnik',flag:'pic1.png'),
      // info(name:'anmol',flag:'pic1.png'),
      // info(name:'sujeet',flag:'pic1.png'),
    ];

  void name() => name;
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            titleSpacing: 0,
            leading: Icon(Icons.arrow_back),
  
            //phelha action button jiska kam piche vali screen ma jana ha  
  
            actions: <Widget>[
              //button bana rha hu isma phelha 
              IconButton(
                icon: Icon(Icons.add_circle),
                    //color: Colors.black,
                    onPressed: () {
                      //Navigator.pop(context);
                    },
              )
            ],
  
            //dusra button bna rha hu jo hume function provide karega 
            //jis se hum add kar sake bande ka info vagera ik tarah ka format de dunga 
            centerTitle: true ,//yeh text ko center pa kar dega app bar pa 
            title: Text("Team"),
          ),
  
          body: ListView.builder(
            itemCount: details.length,//yeh pta lagya ga ki kinne item ha list ka andar
            itemBuilder: (context,index) {
              return Card(
                child:ListTile(
                 // onTap: () {},
                  title: Text(details[index]),
                  subtitle: Text("Team Members"),
                  leading: CircleAvatar(
                    backgroundImage: ExactAssetImage('images/pic1.png'),//yarr kasa hoga yeh sceen dhikh hi ni rha img
                   // backgroundColor: Colors.white,
                    radius: 36.0,
                  ),
                ),
              );
            },
          ) ,       
        ),
      );
    }
  
  }