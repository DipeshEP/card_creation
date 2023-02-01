import 'package:flutter/material.dart';

class AddText extends StatefulWidget {
  const AddText({Key? key}) : super(key: key);

  @override
  State<AddText> createState() => _AddTextState();
}

class _AddTextState extends State<AddText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:PhysicalModel(
        color: Colors.white10,
        child: SizedBox(
          height: 100,
          width: 100,
        ),
        shadowColor: Colors.pink,
        shape: BoxShape.circle,
      )
      // ColorFiltered(
      //   colorFilter: ColorFilter.mode(Colors.indigoAccent,BlendMode.multiply),
      //   child: Image.network("https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
      // ),

    );
  }
}
