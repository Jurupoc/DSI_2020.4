import 'dart:math';

import 'package:dsi_app/constants.dart';
import 'package:dsi_app/infra.dart';
import 'package:dsi_app/register2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {

  BuildContext context;
  @override


  Widget build(BuildContext context) {
    return DsiScaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(),
    );
  }


  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.menu),
      title: Text('Home'),
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
        
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => RegisterPage2()));
            },
            child: Icon(
              Icons.search,
              size: 30.0,
            ),
          

          )
        ),
        Icon(Icons.more_vert),
      SizedBox(
        width: 20,
      ),   

          // Icon(Icons.more_vert),
      ],
    ); 
  }

  Widget _buildBody() {
    return Opacity(
      opacity: 0.5,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xfff7ffe8), Color(0xffc2ca94)], // Color(0xffc7ffba)
            stops: [0.8, 1.0],
            transform: GradientRotation(pi / 2.03),
          ),
          image: DecorationImage(
            image: Images.bsiLogo,
          ),
        ),
      ),
    );
  }
}
class HomeForm extends StatefulWidget {
  @override
  HomeFormState createState() {
    return HomeFormState();
  }
}

class HomeFormState extends State<HomeForm> {
  @override
  Widget build(BuildContext context) {
    
  }

}