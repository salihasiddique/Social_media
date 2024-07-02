import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: contact(),
    debugShowCheckedModeBanner: false,
  ));
}

class contact extends StatelessWidget {
  const contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chats",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal[800],
      ),
      body: ListView(
        children: [
          Card(

              child: ListTile(
                title: Text("saliha"),
                subtitle: Text("how are you? "),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Icon(Icons.circle,color: Colors.teal[800],size: 10,)
                  ],
                  
                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/5259884_20619.jpg"),
                  backgroundColor: Colors.teal[800],
                radius: 30,
                )
              )

          ),
          Card(
            child: ListTile(
              title: Text("siddique"),
              subtitle: Text("evideyaaanu kore divasam aayallo kandit "),
              trailing: Column(
                children: [
                 // Icon(Icons.circle,color: Colors.teal[800],),
                  Text("Today"),
                  SizedBox(height: 10,),
                  Text("13:46")
                ],

              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                radius: 30,
              ),
            ),
          ),
          Card(

              child: ListTile(
                title: Text("anu"),
                subtitle: Text("ticket confirmation kitiyo ,confirm aavumbol parata"),
                trailing: Column(
                  children: [
                  //  Icon(Icons.circle,color: Colors.teal[800],),
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46"),

                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/tree.png"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("appu"),
                subtitle: Text("oru paatu paadumo\n illuminati paadu nammuk viral aaka"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/cart.png"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("anu"),
                subtitle: Text("what for dinner ?"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("minnu"),
                subtitle: Text("hey y don't you call me ? if i know means defently i would be there"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("aaaa"),
                subtitle: Text("today was a worst day everything lost from my hands\n its my mistake"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("kochu"),
                subtitle: Text("shall we go for a ride \n optu"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("kichu"),
                subtitle: Text("9645997784"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("unni"),
                subtitle: Text("9645997784"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("anu"),
                subtitle: Text("9645997784"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/7533491_3691028.jpg"),
                  radius: 30,
                ),              )
          ),
          Card(

              child: ListTile(
                title: Text("appu"),
                subtitle: Text("9645997784"),
                trailing: Column(
                  children: [
                    Text("Today"),
                    SizedBox(height: 10,),
                    Text("13:46")
                  ],

                ),
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/1260314_159401-OUNC8S-198.jpg"),
                  radius: 30,
                ),
              ),
          ),
        ],
      ),
    );
  }
}