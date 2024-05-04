import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:todolist/constants/colors.dart';

class todoItem extends StatelessWidget {
  const todoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: Icon(Icons.check_box, color: tdBlue, size: 30),
          title: Text(
            'check mail',
            style: TextStyle(
              color: tdBlack,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              icon: Icon(Icons.delete),
              color: Colors.white,
              iconSize: 20,
              onPressed: () {},
            ),
          )),
    );
  }
}
