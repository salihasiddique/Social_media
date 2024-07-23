import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
//hive is map formate

void main()async{
  await Hive.initFlutter();
  await Hive.openBox("todo_box");
  runApp(MaterialApp(
    home: HIVE_CRUD(),
    debugShowCheckedModeBanner: false,
  ));
}
class HIVE_CRUD extends StatefulWidget {
  const HIVE_CRUD({super.key});

  @override
  State<HIVE_CRUD> createState() => _HIVE_CRUDState();
}

class _HIVE_CRUDState extends State<HIVE_CRUD> {
  List<Map<String,dynamic>>task=[];

  final tname=TextEditingController();
  final tcontent=TextEditingController();
//create hivebox
  final box =Hive.box("todo_box");
  @override

  void initState(){
    refresh_or_read_task();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY TODO"),
      ),
      body: task.isEmpty
          ?Center(child: CircularProgressIndicator(),)
          :ListView.builder(
           itemCount: task.length,
          itemBuilder: (context,index){
            return Card(
              child: ListTile(
                leading: Icon(Icons.task),
                title: Text(task[index]["taskname"]),
                subtitle: Text(task[index]["taskcontent"]),
                trailing: Wrap(children: [
                  IconButton(onPressed: (){
                    create_or_edit_Task(task[index] ['id']);
                  },
                      icon: Icon(Icons.edit)),
                  IconButton(onPressed: (){
                    deleteTask(task[index] ['id'] );
                  }, icon: Icon(Icons.delete))
                ],)
              ),
            );
          }),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: ()=>create_or_edit_Task(null),
          //null in argument means u want to create new task
          label: Icon(Icons.add)),

    );
  }

 void create_or_edit_Task(int ?itemkey){
    //itemkey rep id pf task tht means tht task need to edit
    if(itemkey!=null){
      //finding existing task tht matches id matching the provided itemkey
      final existing_task=task.firstWhere((element)=>element['id']==itemkey);
      tname.text=existing_task["taskname"];
      tcontent.text=existing_task["taskcontent"];
    }
    //this is for creating new task in bottom sheet1
    showModalBottomSheet(
        context: context,
        builder: (context){
          return Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom+120
            ),
            child: Column(
              children: [
                TextField(
                  controller: tname,
                  decoration: InputDecoration(
                    hintText: "Task Name"
                  ),
                ),
                TextField(
                  controller: tcontent,
                  decoration: InputDecoration(
                    hintText: "Task Content"
                  ),
                ),
                ElevatedButton(onPressed: (){
                  if(itemkey==null){
                    createTask(
                        {
                      'task_name':tname.text.trim(),
                      'task_content':tcontent.text.trim()
                    }
                    );
                  }
                    if(itemkey!=null){
                      editTask(itemkey, {
                        'task_name':tname.text.trim(),
                        'task_content':tcontent.text.trim()
                      });
                    }
                    tname.text='';
                    tcontent.text='';
                    Navigator.pop(context);
                  },

                    child: Text(itemkey==null?"create task":"edit Task"))
              ],
            ),
          );

    });
 }

 Future<void>createTask(Map<String,dynamic>newTask)async {
   await box.add(newTask);
   refresh_or_read_task();
 }
    void refresh_or_read_task(){
      final task_from_hive=box.keys.map((key){
        final map_of_that_single_key=box.get(key);
        return{
          'id':key,   //key1,key2,key3
          'taskname':map_of_that_single_key["task_name"],
          'taskcontent':map_of_that_single_key["task_content"]
        };
      }).toList();
      setState(() {
        task=task_from_hive.reversed.toList();
      });
    }
    Future<void>editTask(int itemkey,Map<String,dynamic>editTask)async{
    await box.put(itemkey, editTask);
    refresh_or_read_task();

 }
 Future<void>deleteTask(int itemkey)async{
      await box.delete(itemkey);
      refresh_or_read_task();
 }
}
