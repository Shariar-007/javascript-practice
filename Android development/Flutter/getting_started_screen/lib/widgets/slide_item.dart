import 'package:flutter/material.dart';
import 'package:getting_started_screen/model/slide.dart';


class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: AssetImage(slideList[index].imageUrl),
                  fit: BoxFit.cover
              )
          ),
        ),
        SizedBox(height: 20,),
        Text(
          slideList[index].title,
          style: TextStyle(
            fontSize: 22,
            color: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(height: 10,),
        Text(
          slideList[index].description,
        )
      ],
    );
  }
}

