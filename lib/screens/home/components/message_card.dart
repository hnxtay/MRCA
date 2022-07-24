import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as type;
import 'package:mrca/config/user_config.dart';
import 'package:mrca/extensions/string_exts.dart';
import 'package:mrca/models/conversation.dart';

class MessageCard extends StatelessWidget {
  final Conversation conversation;

  const MessageCard({
    Key? key,
    required this.conversation,
  }) : super(key: key);

  type.User get fromUser => conversation.from.id != currentUser.id
      ? conversation.from
      : conversation.to;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: ListTile(
        leading: const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage('assets/pictures/selfie_1.jpg'),
        ),
        title: Text('${fromUser.firstName} ${fromUser.lastName}'),
        subtitle: Row(
          children: [
            Text(conversation.lastMsg.from == currentUser.id ? 'You: ' : ''),
            Text(conversation.lastMsg.text),
          ],
        ),
        trailing: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                conversation.lastMsg.time
                    .formattedDatetimeFromTimestamp(pattern: 'HH:mm'),
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

// Widget messageStatus(MessageStatus messageStatus) {
//   if (messageStatus == MessageStatus.sending) {
//     return SvgPicture.asset(
//       'assets/svg/check.svg',
//       height: 12,
//       width: 12,
//       color: Colors.grey,
//     );
//   } else if (messageStatus == MessageStatus.sent) {
//     return Row(
//       children: [
//         SvgPicture.asset(
//           'assets/svg/check.svg',
//           height: 12,
//           width: 12,
//           color: Colors.grey,
//         ),
//         SvgPicture.asset(
//           'assets/svg/check.svg',
//           height: 12,
//           width: 12,
//           color: Colors.grey,
//         ),
//       ],
//     );
//   } else {
//     return Row(
//       children: [
//         SvgPicture.asset(
//           'assets/svg/check.svg',
//           height: 12,
//           width: 12,
//           color: Colors.green,
//         ),
//         SvgPicture.asset(
//           'assets/svg/check.svg',
//           height: 12,
//           width: 12,
//           color: Colors.green,
//         ),
//       ],
//     );
//   }
// }
//
// String checkMessageTime(DateTime messageTime) {
//   if (messageTime.hour >= 12) {
//     return 'PM';
//   } else {
//     return 'AM';
//   }
// }
}
