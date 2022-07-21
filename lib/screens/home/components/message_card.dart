import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mrca/models/chat_model.dart';
import 'package:mrca/models/conversation.dart';

class MessageCard extends StatelessWidget {
  final Conversation chat;

  const MessageCard({
    Key? key,
    required this.chat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(''),
        ),
        title: Text(chat.from),
        subtitle: Text(
          'last messages',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: FittedBox(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '12h ',
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }

  Widget messageStatus(MessageStatus messageStatus) {
    if (messageStatus == MessageStatus.sending) {
      return SvgPicture.asset(
        'assets/svg/check.svg',
        height: 12,
        width: 12,
        color: Colors.grey,
      );
    } else if (messageStatus == MessageStatus.sent) {
      return Row(
        children: [
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.grey,
          ),
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.grey,
          ),
        ],
      );
    } else {
      return Row(
        children: [
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.green,
          ),
          SvgPicture.asset(
            'assets/svg/check.svg',
            height: 12,
            width: 12,
            color: Colors.green,
          ),
        ],
      );
    }
  }

  String checkMessageTime(DateTime messageTime) {
    if (messageTime.hour >= 12) {
      return 'PM';
    } else {
      return 'AM';
    }
  }
}
