import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Update_View extends StatefulWidget {
  final name;
  final email;

  final id;
  Update_View({super.key, this.name, this.id, this.email});

  @override
  State<Update_View> createState() => _Update_ViewState();
}

class _Update_ViewState extends State<Update_View> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();

  void initState() {
    namecontroller.text = widget.name;
    emailcontroller.text = widget.email;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(controller: namecontroller,),
          TextField(),
        ],
      ),
    );
  }
}
