import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_2/screens/widgets/buttons.dart';

class TestCaseTable extends StatefulWidget {
  final List<DataColumn> columns;
  final List<DataRow> rows;

  TestCaseTable({required this.columns, required this.rows});

  @override
  _TestCaseTableState createState() => _TestCaseTableState();
}

class _TestCaseTableState extends State<TestCaseTable> {
  List<bool> selectedRows = [];

  @override
  void initState() {
    super.initState();
    selectedRows = List.generate(widget.rows.length, (index) => false);
  }

  void deleteSelectedRows() {
    // Implement the delete functionality here
    for (int i = selectedRows.length - 1; i >= 0; i--) {
      if (selectedRows[i]) {
        widget.rows.removeAt(i);
        selectedRows.removeAt(i);
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        const Text('TEST CASE'),
        const SizedBox(height: 16.0),
        mediumButtons(
          label: 'CREATE TEST CASE',
          color: Colors.purple,
          textColor: Colors.white,
          buttonAction: () => context.push('/createTestCaseScreen'),
        ),
        const SizedBox(height: 16.0),
        Card(
          elevation: 2.0, // Add elevation for a shadow effect
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(8.0), // Add rounded corners if needed
            side: BorderSide(width: 1.0, color: Colors.grey), // Add border
          ),
          child: DataTable(
            columns: widget.columns,
            rows: List<DataRow>.generate(widget.rows.length, (index) {
              return DataRow(
                selected: selectedRows[index],
                onSelectChanged: (bool? isSelected) {
                  setState(() {
                    selectedRows[index] = isSelected ?? false;
                  });
                },
                cells: widget.rows[index].cells,
              );
            }),
          ),
        ),
        const SizedBox(height: 16.0),
        mediumButtons(
          label: 'Delete',
          color: Colors.red,
          textColor: Colors.white,
          buttonAction: () {
            deleteSelectedRows();
          },
        ),
      ],
    );
  }
}
