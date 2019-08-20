import 'package:flutter/material.dart';
import 'package:yuso/screens/social/social.dart';

//dummy code . replace everything here . or better even delete it

class Dummy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dummy Page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){
            social(context);
          },
          elevation: 10,
                    textColor: Colors.white,
                    
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "share",
        )
        
      ),
    )
    );
  }
}
