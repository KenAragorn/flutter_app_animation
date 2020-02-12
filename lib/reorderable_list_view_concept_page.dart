import 'package:flutter/material.dart';

class ReorderableListViewConceptPage extends StatefulWidget {
  @override
  _ReorderableListViewConceptPageState createState() =>
      _ReorderableListViewConceptPageState();
}

class _ReorderableListViewConceptPageState
    extends State<ReorderableListViewConceptPage> {
  List<String> alphabetList = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reorderable List View Concept"),
      ),
      body: _designArea(),
    );
  }

  Widget _designArea() {
    return ReorderableListView(
      scrollDirection: Axis.vertical,
      children: List.generate(
        alphabetList.length,
        (index) {
          return ListTile(
            key: ValueKey("value$index"),
            title: Text("Alphabet " + alphabetList[index]),
          );
        },
      ),
      onReorder: _onReorder,
    );
  }

  void _onReorder(int oldIndex, int newIndex) {
    setState(
      () {
        if (newIndex > oldIndex) {
          newIndex -= 1;
        }
        final String item = alphabetList.removeAt(oldIndex);
        alphabetList.insert(newIndex, item);
      },
    );
  }
}
