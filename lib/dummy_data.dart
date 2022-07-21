import 'models/chat_model.dart';

List<ChatModel> chatList = [
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_1.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'How are you',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now(),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_2.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'Ok...',
    messageStatus: MessageStatus.sending,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 5),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_3.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'I am done',
    messageStatus: MessageStatus.sent,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 25),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_4.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'Are you finish it?',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 60),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_5.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'When is your birthday?',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 150),
    ),
  ),
  ChatModel(
    userPhotoUrl: 'assets/pictures/selfie_6.jpg',
    userName: 'Linzi Coulson',
    lastMessage: 'How are you.',
    messageStatus: MessageStatus.seen,
    lastMessageTime: DateTime.now().subtract(
      const Duration(minutes: 300),
    ),
  ),
];
