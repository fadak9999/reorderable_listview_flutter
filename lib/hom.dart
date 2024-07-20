// ignore_for_file: avoid_print

/*import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  ///

  List<int> items = List<int>.generate(20, (index) => index);

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Reorderable  List  View"),
      ),

      //////////////ReorderableListView////////////////////
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            trailing: const Icon(Icons.drag_handle_sharp),
            tileColor: items[index].isOdd
                ? const Color.fromARGB(255, 221, 221, 224)
                : const Color.fromARGB(255, 90, 145, 240),
            /////
            key: Key('$index'),
            title: Text("list${items[index]}"),
          ),
        ),

        ///
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

// ignore: camel_case_types
class _homeState extends State<home> {
  List<int> items = List<int>.generate(20, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Reorderable List View"),
      ),
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) => ListTile(
            trailing: const Icon(Icons.drag_handle_sharp),
            tileColor: items[index].isOdd
                ? const Color.fromARGB(255, 221, 221, 224)
                : const Color.fromARGB(255, 90, 145, 240),
            key: Key('$index'),
            title: Text("list${items[index]}"),
          ),
        ),
        onReorder: (int oldIndex, int newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);

            ///لجعل العنصر الموجود في موقع صفر يحدث امرا ما
            if (newIndex == 0) {
              print('تم');
            }
          });
        },
      ),
    );
  }
}
