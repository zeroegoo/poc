import 'package:employee_app/Languages/th.dart';
import 'package:get/get.dart';
import 'en.dart';
import 'kh.dart';
import 'la.dart';
import 'mm.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    "en": en,
    "th": th,
    "kh": kh,
    "la": la,
    "mm": mm,
  };
}