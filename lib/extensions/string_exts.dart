import 'package:intl/intl.dart';

extension StringExts on String {
  String formattedDatetimeFromTimestamp({String pattern = 'yyyy-MM-dd'}) {
    final timestamp = int.tryParse(this) ?? 0;
    final datetime = DateTime.fromMillisecondsSinceEpoch(timestamp).toLocal();
    return DateFormat(pattern).format(datetime).toString();
  }
}
