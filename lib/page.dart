import 'package:flutter/material.dart';

class pagescreen extends StatelessWidget {
  const pagescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('data')),
    );
  }
}
