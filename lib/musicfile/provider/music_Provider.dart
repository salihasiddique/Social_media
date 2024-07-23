import 'package:flutter/cupertino.dart';

class MusicProvider extends ChangeNotifier{
  final List<Map<String,String>> _musiclist=[];
  List <Map<String,String>> get musiclist=>_musiclist;

  //_musiclist is declares has empty and it created as private
  // get is used to read private data
void addTofav(Map<String,String>favourite){
  _musiclist.add(favourite);
  notifyListeners();
}
void removeFromFav(Map<String,String>favourite){
  _musiclist.remove(favourite);
  notifyListeners();
}

}