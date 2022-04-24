import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Minhas Tarefas"),
          ),
          body: TasksList(),
        ),
        //floatingActionButton: FloatingActionButton(
        // child: Icon(Icons.add),
        // onPressed: ,
        //),
      ),
    );

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TaskItem(NewTask("Comprar Roupas", "Passar na Rener antes")),
        TaskItem(NewTask("Supermercado", "Café, Açúcar, Coador, Água Mineral")),
        TaskItem(NewTask(
            "Levar crianças na escola", "Avisar Marcelo do trabalho em grupo")),
      ],
    );
    //throw UnimplementedError();
  }
}

class TaskItem extends StatelessWidget {
  final NewTask newTask;

  TaskItem(this.newTask);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.check_box),
        title: Text(newTask.taskTitle),
        subtitle: Text(newTask.taskSubtitle),
      ),
    );
  }
}

class NewTask {
  String taskTitle = "";
  String taskSubtitle = "";

  NewTask(this.taskTitle, this.taskSubtitle) {
    // TODO: implement
    // throw UnimplementedError();
  }
}
