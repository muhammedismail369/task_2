import 'package:flutter/material.dart';
import 'package:task_2/screens/widgets/test_case.dart';
import 'package:task_2/screens/widgets/test_plan.dart';

class TestFormScreen extends StatefulWidget {
  const TestFormScreen({super.key});

  @override
  State<TestFormScreen> createState() => _TestFormScreenState();
}

class _TestFormScreenState extends State<TestFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Test Form')),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TestCaseTable(
            columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Description')),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Item 1')),
                DataCell(Text('Description 1')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Item 2')),
                DataCell(Text('Description 2')),
              ]),
            ],
          ),
          TestPlanTable(
            columns: const [
              DataColumn(label: Text('ID')),
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Description')),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('Item 1')),
                DataCell(Text('Description 1')),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('Item 2')),
                DataCell(Text('Description 2')),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
