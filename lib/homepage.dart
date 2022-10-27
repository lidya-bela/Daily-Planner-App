import 'package:dailyplanner/task.dart';
import 'package:dailyplanner/task_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final listTask = Task.listTask();
  List<Task> _foundtask = [];
  final _taskController = TextEditingController();

  @override
  void initState() {
    _foundtask = listTask;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(1000, 0, 104, 119),
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 50,
                          bottom: 20,
                        ),
                        child: Text(
                          'My Daily Tasks',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      for (Task tasks in _foundtask.reversed)
                        TaskItem(
                          task: tasks,
                          onTaskChanged: _handleTaskChange,
                          onDeleteItem: _deleteTaskItem,
                        ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20,
                    left: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _taskController,
                    decoration: InputDecoration(
                        hintText: 'Add a new task', border: InputBorder.none),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  onPressed: () {
                    _addTaskItem(_taskController.text);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(1000, 114, 248, 233),
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  void _handleTaskChange(Task task) {
    setState(() {
      task.isDone = !task.isDone;
    });
  }

  void _deleteTaskItem(String id) {
    setState(() {
      listTask.removeWhere((item) => item.id == id);
    });
  }

  void _addTaskItem(String task) {
    setState(() {
      listTask.add(Task(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        taskText: task,
      ));
    });
    _taskController.clear();
  }

  void _runFilter(String enteredKeyword) {
    List<Task> results = [];
    if (enteredKeyword.isEmpty) {
      results = listTask;
    } else {
      results = listTask
          .where((item) => item.taskText!
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundtask = results;
    });
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged: (value) => _runFilter(value),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25,
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Icon(
          Icons.menu,
          color: Colors.white,
          size: 30,
        ),
        Container(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/avatar.png'),
          ),
        ),
      ]),
    );
  }
}
