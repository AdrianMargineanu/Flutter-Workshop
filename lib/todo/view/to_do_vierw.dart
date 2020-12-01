import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'package:toappworkshop/todo/model/todo.dart';
import 'package:toappworkshop/todo/service/todo_provider.dart';

class ToDoView extends StatefulWidget {
  _ToDoViewState createState() => _ToDoViewState();
}

class _ToDoViewState extends State<ToDoView> {
  List<String> allItemList = [];
  List<String> checkedList = [];

  @override
  void initState() {
    ToDoProvider.list.sort(ToDo.compareTo);
    allItemList = ToDoProvider.list.map((e) => e.toString()).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: Container(
        child: Center(
          child: GroupedCheckbox(
            checkedItemList: checkedList,
            onChanged: (itemList) {
              setState(() {
                checkedList = itemList;
              });
            },
            orientation: CheckboxOrientation.VERTICAL,
            itemList: allItemList,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete_forever),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    title: Text('Alert delete all items'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                            'Are you sure you want to delete all checked items?'),
                        Padding(
                          padding: const EdgeInsets.only(top:16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor),
                                ),
                                onTap: () => {Navigator.pop(context)},
                              ),
                              InkWell(
                                child: Text('Yes',
                                    style: TextStyle(color: Colors.red)),
                                onTap: () => {
                                  Navigator.pop(context),
                                  setState(() {
                                    for (String e in checkedList) {
                                      allItemList.remove(e);
                                    }
                                    checkedList.clear();
                                  })
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ));
              });
        },
      ),
    );
  }
}
