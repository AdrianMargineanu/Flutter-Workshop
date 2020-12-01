import 'package:toappworkshop/todo/model/todo.dart';

class ToDoProvider{
  static List<ToDo> list = [
    ToDo('Plimba cainele', DateTime(2020,12,1,10), 0),
    ToDo('Du gunoiul', new DateTime(2020,12,1,13),1),
     ToDo('Du-te la magazin', new DateTime(2020,12,1,15), 2),
    ToDo('Fa un omulet de zapada', new DateTime(2020,12,1,18), 0),
     ToDo('Îmbodobește bradul de Crăciun', new DateTime(2020,12,1,12), 0),
     ToDo('Curatenie in camera', new DateTime(2020,12,1,17), 1),
   ToDo('Curățarea litierei', new DateTime(2020,12,1,16), 2),
   ToDo('Joc de dame cu profesorii', new DateTime(2020,12,1,18), 0),
     ToDo('Curatirea terenului de zapada', new DateTime(2020,12,3,10), 1),
    new ToDo('Compleateaza aceasta lista', new DateTime(2020,12,1,10),1),
    new ToDo('Repara laptopul', new DateTime(2020,12,3,20), 2),
    new ToDo('Participa la workshop', new DateTime(2020,12,1,10), 2),
    new ToDo('Backup la hardisk', new DateTime(2020,12,1,19), 1),
    new ToDo('Instalare Flutter', new DateTime(2020,12,1,10), 2),
    new ToDo('Familiarizat cu Dart', new DateTime(2020,12,1,10), 1),
  ];
}