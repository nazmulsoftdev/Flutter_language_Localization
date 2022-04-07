import 'package:app2/languages/bangla.dart';
import 'package:app2/languages/eng.dart';
import 'package:app2/languages/hindi.dart';
import 'package:app2/languages/japan.dart';
import 'package:get/get.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    "bn_BD":bang,
    "hi_IN":hind,
    "ja_JP":japa,
    "en_US":eng
  };

}