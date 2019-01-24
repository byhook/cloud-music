import 'package:mike_music/bean/RecommendBase.dart';

class RecommendSong extends RecommendBase {

  String title;

  List<String> images;

  RecommendSong() {
    type = 1;
  }

}