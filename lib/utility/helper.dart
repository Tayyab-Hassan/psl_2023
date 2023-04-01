// 05-Mar-2023 7:00 PM
import 'package:intl/intl.dart';

class Helper {
  static String getData(String gmt) {
    List<String> list = gmt.split('_');
    return list[0].replaceAll('-', '  ');
  }

  static String getGmt(String gmt) {
    List<String> list = gmt.split('_');

    return '${list[1]} ${list[2]} GMT';
  }

  static String getLocaltime(String gmt) {
    DateFormat dateFormat = DateFormat('dd-MMM-yyyy hh:mm a');
    DateTime dt = dateFormat.parse(gmt, true);
    DateTime localDT = dt.toLocal();
    String time = DateFormat('hh:mm a').format(localDT);
    return time;
  }
}
