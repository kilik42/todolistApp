import 'package:flutter/material.dart';
import 'package:todolist/constants/colors.dart';
import 'package:todolist/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            searchBox(),
            Expanded(
              child: ListView(
                children:[
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      'All Tasks',
                      style: TextStyle(
                        color: tdBlack,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),  
                    )
                  ),
                  todoItem(),
                ]
              ),
            )
            
          ],
        ),
      ),
    );
  }

  Container searchBox() {
    return Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration:BoxDecoration (
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  
                ),
                
              ),
        );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
        Icon(Icons.menu, color: tdBlack),
        Container(
          height: 40,
          width:40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/images/profile.jpg'),
          ),
        )],
      ),
    );
  }
}