import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/appbarwidget.dart';
import '../widgets/categorywidget.dart';
import '../widgets/drawerwidget.dart';
import '../widgets/newestitemwidget.dart';
import '../widgets/popularitemwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //custom app bar
          AppBarWidget(),

          //search bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    spreadRadius: 2,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.red,
                    ),
                    Container(
                      height: 50,
                      width: 280,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'What would you like to have?',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Icon(Icons.filter_list),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //Categeory
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Categories',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          CategoryWidget(),

          //Popular Items
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Popular',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          PopularItemWidget(),

          //Newest Item
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Newest',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          NewestItemWidget(),
        ],
      ),
      drawer: DrawerWidget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(CupertinoIcons.shopping_cart, size: 28, color: Colors.red,),
          onPressed: (){
            Navigator.pushNamed(context, "cartPage");
          },
        ),
      ),
    );
  }
}
