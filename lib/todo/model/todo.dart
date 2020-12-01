import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
class ToDo {
  String title;
  DateTime date;
  int importance; // 0 1 2

  ToDo(this.title,this.date,this.importance);

  @override
  String toString() {
    return title + ' until ' + DateFormat('kk:mm').format(date);
  }

  static int compareTo(ToDo a, ToDo b){
    return b.importance - a.importance;
  }

}