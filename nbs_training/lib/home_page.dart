import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
// class HomePage extends StatelessWidget {
  int value;
  List<Map<String, dynamic>> values;
  
  // init
  @override
  void initState(){
    value = 0;
    values = [
      {
       'value': value,
       'isChecked': false
      }
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('NBS Training')),
      body: ListView.builder(
        // scrollDirection: Axis.horizontal,
        itemCount: values.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            leading: Icon(Icons.adb),
            title: Text('Value: ' + values[index]['value'].toString()),
            subtitle: Text('Sample Subtitle '+values[index]['value'].toString()),
            trailing: Checkbox(
              value: values[index]['isChecked'],
              onChanged: (bool value) {
                setState((){
                  values[index]['isChecked'] = value;
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          // elevation: 10,
           onPressed: () {
            setState(addvalues);
          }
      ),
    );
  }

  void addvalues() {
     value++;
     Map<String, dynamic> data = {
       'value': value,
       'isChecked': false
     };
    values.add(data);
    // print(values);
  }
}
