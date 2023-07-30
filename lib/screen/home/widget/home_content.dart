import 'package:app_gym/util/core/const/colorContain.dart';
import 'package:flutter/material.dart';
class HomeContent extends StatefulWidget {
  const HomeContent({ Key? key }) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.homeBackgroundColor,
      width: double.infinity, // <-- match_parent 
      
    );
  }
}