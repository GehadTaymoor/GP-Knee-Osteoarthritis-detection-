import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height*0.07,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
              topRight: Radius.circular(0)),
          // gradient: LinearGradient(colors: [
          //   Colors.white,
          //   Color(0xff3FBE90),
          // ])
      )
      ,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.facebook)),
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.instagram)),
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.linkedin)),
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.whatsapp)),
          IconButton(
              onPressed: (){},
              icon: Icon(FontAwesomeIcons.twitter)),
        ],
      ),
    );
  }
}
