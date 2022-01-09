import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:splash_screen/todomodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: ChangeNotifierProvider(
        create: (context) => TodoModel(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('every time clicks');
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.lightBlue[900],
        title: Text('state management - Provider '),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
      ),
      backgroundColor: Colors.lightBlue[900],
      body: Padding(
        padding: EdgeInsets.all(1.0),
        child: Column(
          children: [
            Text(
              '4.45 PM',
              style:
                  GoogleFonts.roboto(fontSize: 45, fontWeight: FontWeight.bold),
            ),
            Text(
              'current time',
              style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Consumer<TodoModel>(builder: (context, todo, child) {
                    return ListView.builder(
                        itemCount: todo.taskList.length,
                        itemBuilder: (context, int index) {
                          return Container(
                            padding: EdgeInsets.all(2),
                            child: ListTile(
                              title: Text(todo.taskList[index].title),
                              subtitle: Text(todo.taskList[index].detail),
                              trailing: Icon(
                                Icons.check_circle_rounded,
                                color: Colors.lightGreen,
                              ),
                            ),
                          );
                        });
                  })),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<TodoModel>(context, listen: false).addTaskList();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
