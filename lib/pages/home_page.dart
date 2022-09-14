import 'package:flutter/material.dart';

import 'add_student_page.dart';
import 'list_student_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddStudentPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('FireStore CRUD'),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddStudentPage(),
                  ),
                ),
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                elevation: 5,
              ),
              child: const Text('Add', style: TextStyle(fontSize: 20.0)),
            )
          ],
        ),
      ),
      body: const ListStudentPage(),
    );
  }
}
