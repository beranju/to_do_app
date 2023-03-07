import 'package:flutter/material.dart';

class TaskItem extends StatefulWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Task Title when use kfsldk jfks laksjjd",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18.0,
                            decoration: (isFinished) ? TextDecoration.lineThrough : TextDecoration.none
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        const Text("Task description")
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Checkbox(
                        value: isFinished,
                        onChanged: (newValue) {
                          setState(() {
                            isFinished = newValue!;
                          });
                        }),
                  )
                ],
              ),
            ),
            const Divider(
              height: 4,
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 4.0),
                child: const Text("Today, 11.30"))
          ],
        ),
      ),
    );
  }
}
