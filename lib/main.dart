import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const AssignmentTwoScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AssignmentTwoScreen extends StatelessWidget {
  const AssignmentTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Assignment 2'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Row & Column'),
              Tab(text: 'Row & Stack'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            RowAndColumn(),
            RowAndStack(),
          ],
        ),
      ),
    );
  }
}

class RowAndColumn extends StatelessWidget {
  const RowAndColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('مثال على Row داخل Column:', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(Icons.home, color: Colors.blue),
              Text('الصف الأول'),
              Icon(Icons.settings, color: Colors.cyanAccent),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('عنصر A'),
              Text('عنصر B'),
              Text('عنصر C'),
            ],
          ),
        ],
      ),
    );
  }
}

class RowAndStack extends StatelessWidget {
  const RowAndStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.cyanAccent[200],
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: const [
                Icon(Icons.star, color: Colors.blue),
                SizedBox(width: 8),
                Text('مكدس + صف', style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}