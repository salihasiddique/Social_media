import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: WhatsappStatus(),
    debugShowCheckedModeBanner: false,
  ));
}

class WhatsappStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              children: [
                Text("Updates"),
                Spacer(),
                PopupMenuButton(
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(child: Text("Status privacy")),
                    ];
                  },
                ),
              ],
            ),
            floating: true,
            pinned: false,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: AppBar(
                elevation: 0,
                leading: CircleAvatar(
                  backgroundColor: Colors.teal[800],
                  radius: 20, // Updated radius to be larger
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1611784237558-037ea57c3b52?q=80&w=2071&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
                title: Text("My Status"),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
              Container(
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(thickness: 2,color: Colors.teal[800],),
                         Text(
                              "Recent updates",
                              style: TextStyle(
                                      fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal[800]),
                             ),
                    ListTile(
                      leading: CircleAvatar(
                                    radius: 20, // Updated radius to be larger
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1621542866289-21a3d62c91d3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                                  ),
                      title: Text("Bhai",style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text("11 minutes ago"),
                    )
               ]
                ),
              )
              ]))
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //         (context, index) => Padding(
          //       padding: EdgeInsets.all(3),
          //         child: Card(
          //         child: ListTile(
          //           leading: CircleAvatar(
          //             radius: 20, // Updated radius to be larger
          //             backgroundImage: NetworkImage(
          //                 "https://images.unsplash.com/photo-1621542866289-21a3d62c91d3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          //           ),
          //           title: Text("ayush"),
          //           subtitle: Text("3 minutes ago"),
          //         ),
          //       ),
          //     ),
          //     childCount: 1, // Update this as needed
          //   ),
          // ),
          //
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //         (context, index) => Padding(
          //       padding: EdgeInsets.all(3),
          //       child: Card(
          //         child: ListTile(
          //           leading: CircleAvatar(
          //             radius: 20, // Updated radius to be larger
          //             backgroundImage: NetworkImage(
          //                 "https://images.unsplash.com/photo-1621542866289-21a3d62c91d3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          //           ),
          //           title: Text("lulu"),
          //           subtitle: Text("10 minutes ago"),
          //         ),
          //       ),
          //     ),
          //     childCount: 1, // Update this as needed
          //   ),
          // ),
        ],
      ),
    );
  }
}
