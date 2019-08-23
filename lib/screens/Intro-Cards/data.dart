import 'package:flutter/material.dart';

var pageList = [
  PageModel(
    imageUrl: "assets/travel.png",
    title: "Travel",
    body: "Where Are You Heading Today?",
  ),
  PageModel(
    imageUrl: "assets/dir.png",
    title: "Direction",
    body: "We Tell You How To Get There",
  ),
  PageModel(
    imageUrl: "assets/smartphone.png",
    title: "Translate",
    body: "Can't Understand The Language?"
        "\n"
        "We are Here To Help You",
  ),
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body});
}
