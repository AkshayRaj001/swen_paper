import 'package:flutter/material.dart';

class categoryTile extends StatelessWidget {
  final ImageUrl,categoryName;
   categoryTile({this.ImageUrl,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(ImageUrl,width: 120,height: 60,)
        ],
      ),
    );
  }
}