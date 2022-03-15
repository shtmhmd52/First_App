import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title:const Text("عاصمة فلسطين",
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            "https://cdn.al-ain.com/images/2020/1/29/60-005034-jerusalem-details-deal-century_700x400.jpg",
          ),
          Text("مدينة القدس",
            style: TextStyle(
                fontSize: 24,
                color: Colors.grey,
                fontWeight: FontWeight.bold
            ),
          ),
          MyContainer("الاسم","القدس"),
          MyContainer("الدولة","فلسطين"),
          MyContainer("المساحة"," 125كم"),
          MyContainer("السكان","358000 نسمة"),
          MyContainer("اسم الطالب","محمد شعت"),

        ],

      ),

    );
  }
}

class MyContainer extends StatelessWidget {
  late String text1;
  late String text2;
  MyContainer(
      String t1User,
      String t2User
      ){
    this.text1=t1User;
    this.text2=t2User;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      margin:const EdgeInsets.symmetric(
        horizontal:  10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        children: [
          SizedBox( width: 2,),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Text("$text2",style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey
              ),),

            ),
          ),
          SizedBox(width: 5,),
          Container(
            width: 125,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text("$text1",style: TextStyle(
                fontSize: 24,
                color: Colors.grey
            ),),

          ),
          SizedBox(width: 2,),


        ],
      ),
    );
  }
}

