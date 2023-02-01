import 'package:card_creation/src/pages/add_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*.7,

              child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    height: MediaQuery.of(context).size.height*.6,
                    width: MediaQuery.of(context).size.width*.5,

                  ),
                ),
            ),

            Container(
              width: MediaQuery.of(context).size.width*.3,
                height: MediaQuery.of(context).size.height,

                color: Color(0XFF1EBEA5),
                child: menuList())
          ],
        ),
      ),
    );
  }

  Widget menuList(){
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AddText()));
          },
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child:const Center(
              child: Text("Add Text",style: TextStyle(
                  color: Color(0XFFFFFFFF)
              ),),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: Center(
              child: Text("Icons",style: TextStyle(
                  color: Color(0XFFFFFFFF)
              ),),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: Center(
              child: Text("Add Logo",style: TextStyle(
                  color: Color(0XFFFFFFFF)
              ),),
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: Center(
              child: Text("Change Template",style: TextStyle(
                  color: Color(0XFFFFFFFF)
              ),),
            ),
          ),
        ),
        InkWell(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: Center(
              child: Text("Third Party App Icons",style: TextStyle(
                  color: Color(0XFFFFFFFF)
              ),),
            ),
          ),
        ),
        InkWell(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*.15,
            child: Center(
              child: Text("Preview",style: TextStyle(
                  color: Color(0XFFFFFFFF)
              ),),
            ),
          ),
        ),

      ],
    );
  }
}
