import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Textfield extends StatelessWidget {

  final String textlabel;
  final bool obscuretext;

  const Textfield( 
    {
      super.key,
      required this.textlabel,
      this.obscuretext = false
    }
    );

  @override
  Widget build(BuildContext context) {
    return Card
    (
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
      elevation: 6,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container
          (
            margin: EdgeInsets.only(left: 12, top:8),
            child:Text(
              textlabel,
              style:GoogleFonts.ubuntu(fontSize: 11, fontWeight: FontWeight.w900 ),
              textAlign: TextAlign.left,
              ),
          ),
 
          TextField
          (
          obscureText: obscuretext,
          style:GoogleFonts.ubuntu(color: Color.fromRGBO(98, 98, 98, 98),fontSize: 10),
          decoration: 
            InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(14), borderSide: BorderSide.none,),
              filled: true,
              fillColor: Colors.white,
              hoverColor: Colors.transparent,
              isDense: true,
              contentPadding: EdgeInsets.only(top:7,bottom: 9,left:9,right:9)
            ),
          ),

        ]
      )
    );
  }
}

