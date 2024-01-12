import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

import '../modal/itemData.dart';

class day11_ToDoList extends StatefulWidget {
  day11_ToDoList({Key? key}) : super(key: key);

  @override
  State<day11_ToDoList> createState() => _day11_ToDoListState();
}

class _day11_ToDoListState extends State<day11_ToDoList> {
  TextEditingController controllerName = TextEditingController();

  void _handOnClick(BuildContext context) {
    final newItem =
        itemData(id: DateTime.now().toString(), name: controllerName.text);
    setState(() {
      if (controllerName.text.isEmpty) {
        return;
      }
      items.add(newItem);
      Navigator.pop(context);
    });
  }

  void _handleDelteItem(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  final List<itemData> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Công việc hằng ngày"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: items
              .map((e) =>
                  cardWidget(index: items.indexOf(e), name: e.name, id: e.id))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.grey[400],
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              context: context,
              builder: (BuildContext context) {
                return modalBottom(context: context);
              });
        },
        child: Icon(
          Icons.add,
          size: 24,
        ),
      ),
    );
  }

  Widget modalBottom({context}) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controllerName,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Công việc của bạn"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _handOnClick(context),
                child: Text("Thêm công việc"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cardWidget({name, id, index}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color:
              (index % 2 == 0) ? Colors.green.shade500 : Colors.blue.shade500,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                onTap: () async {
                  if (await confirm(context)) {
                    _handleDelteItem(id);
                  } else {
                    print("Cancle");
                  }
                },
                child: Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
