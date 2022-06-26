import 'package:flutter/material.dart';
import 'package:userinput_formvalidation_navigation_route_fonts/page.dart';

class myApp2 extends StatefulWidget {
  myApp2({Key? key}) : super(key: key);

  @override
  State<myApp2> createState() => _myApp2State();
}

class _myApp2State extends State<myApp2> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController textController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(38.0),
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text('Hello Tarik',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'dancing'  ),),
                  SizedBox(height: 30,),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.always,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'fill this';
                      }
                    },
                    decoration: InputDecoration(hintText: 'enter your email'),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print(textController.text);
                        // if (_formKey.currentState!.validate()) {
                        //  Navigator.pushNamed(context, '/second');
                        // }
                      },
                      child: Text('go to next')),
                  SizedBox(height: 30,),
                  Text('this is the test of font changing.All the font is changing,\nThank you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
