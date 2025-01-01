import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/Circle.dart';
import 'package:flutter_application_2/components/square.dart';

class Tutorialpage extends StatelessWidget {
  Tutorialpage({super.key});
  List _posts = [
    {
      'title': 'Post 1',
      'author': 'Author 1',
    },
    {
      'title': 'Post 2',
      'author': 'Author 2',
    },
    {
      'title': 'Post 3',
      'author': 'Author 3',
    },
    {
      'title': 'Post 4',
      'author': 'Author 4',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Circle();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return Square(
                    title: _posts[index]['title'],
                    author: _posts[index]['author'],
                  );
                }),
          ),
        ],
      )),
    );
  }
}
