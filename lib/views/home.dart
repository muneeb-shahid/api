import 'package:api/services/update_view.dart';
import 'package:flutter/material.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) =>  AddUserScreen()),
      //     );
      //   },
      //   child: const Icon(Icons.add),
      // ),
      body: FutureBuilder(
        future: getUser(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snapshot.data.data[index].name),
                  subtitle: Text(snapshot.data.data[index].email),

                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Update_View(),));
                                              }, icon:  Icon(Icons.update)),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}