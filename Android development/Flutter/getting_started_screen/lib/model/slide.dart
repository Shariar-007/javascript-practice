import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String description;

  Slide({
      @required this.imageUrl,
      @required this.title,
      @required this.description
  });
}


final slideList = [
  Slide(
    imageUrl: 'assets/images/image1.jpg',
    title: 'A Cool Way to get start',
    description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  ),
  Slide(
      imageUrl: 'assets/images/image2.jpg',
      title: 'Design Interactive App UI',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  ),
  Slide(
      imageUrl: 'assets/images/image3.jpg',
      title: 'It is Just the beginning',
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
  )
];