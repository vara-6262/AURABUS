import 'package:aurabus/features/loginAndSignUp/widgets/GenericButton.dart';
import 'package:aurabus/features/loginAndSignUp/widgets/GoogleButton.dart';
import 'package:aurabus/features/loginAndSignUp/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatefulWidget {

  const SignupPage({super.key});
  @override
  State<StatefulWidget> createState()   => _SignupPageState();

}

class _SignupPageState extends State<SignupPage>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: const Color.fromARGB(255, 242, 242, 242),
          body: SafeArea(
            child:Center(
              child:Container(
                margin: EdgeInsets.only(top:70),
              child: Column
              (
                children:[ 
                  Text("AURABUS",style:GoogleFonts.ubuntu(fontSize: 45, fontWeight: FontWeight.bold ),),
                  Text("SignUpYourMom",style:GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w300 ,color: Colors.grey ),),

                  Textfield(textlabel: 'USERNAME'),
                  Textfield(textlabel: 'EMAIL'),
                  Textfield(textlabel: 'PHONE NUMBER'),
                  Textfield(textlabel: 'PASSWORD', obscuretext:true),
                  Textfield(textlabel: 'REPEAT PASSWORD', obscuretext:true),

                  Genericbutton(textlabel: 'Sign-Up'),
                  Googlebutton(),

                  Text("Already have an account? Go to login",style:GoogleFonts.inter(fontSize: 15, fontWeight: FontWeight.w600  ),),
                ]
                )
              )
            ),

          )
          
        );
  }
}


