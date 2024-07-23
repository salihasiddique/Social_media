// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:social_medias/musicfile/provider/music_Provider.dart';
//
// class Fav extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final favlist=(context).watch<MusicProvider>().musiclist;
//     //intializing provider class
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("favourite list"),
//       ),
//       body: Container(
//         child: ListView.builder(
//           itemCount: favlist.length,
//             itemBuilder: (context,index) {
//               final item =favlist[index];
//               return ListTile(
//                 leading: Image.network(
//                   item["image"]!,
//                   height: 100,
//                   width: 100,
//                   fit: BoxFit.cover,
//                 ),
//                 title: Text(item["name"]!),
//                 subtitle: Text(item["singer"]!),
//                 trailing: IconButton(onPressed: (){
//                   context.read<MusicProvider>().removeFromFav(favlist[index]);
//                   ScaffoldMessenger.of(context)
//                       .showSnackBar(SnackBar(
//                       content: Text(
//                           "Removed from favourite list")
//                   ));
//                 },
//                     icon: Icon(Icons.delete,))
//               );
//             }),
//       )
//     );
//   }
//
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_medias/musicfile/provider/music_provider.dart';

class Fav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favlist = context.watch<MusicProvider>().musiclist;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite List"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: favlist.length,
          itemBuilder: (context, index) {
            final item = favlist[index];
            return ListTile(
              leading: Image.network(
                item["image"] ?? '',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error);
                },
              ),
              title: Text(item["name"] ?? 'Unknown'),
              subtitle: Text(item["singer"] ?? 'Unknown'),
              trailing: IconButton(
                onPressed: () {
                  context.read<MusicProvider>().removeFromFav(favlist[index]);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Removed from favourite list"),
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              ),
            );
          },
        ),
      ),
    );
  }
}
