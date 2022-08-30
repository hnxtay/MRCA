import 'package:flutter/material.dart';
import 'package:mrca/blocs/chat_screen_view_model.dart';
import 'package:mrca/blocs/home_screen_view_model.dart';
import 'package:mrca/screens/chat/chat_screen.dart';
import 'package:mrca/screens/home/components/message_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent.withOpacity(.1),
        title: const Text(
          'MRCA',
          style: TextStyle(
            fontSize: 34,
            color: Colors.green,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            Consumer<HomeScreenViewModel>(
              builder: (context, value, child) => SliverList(
                delegate: SliverChildBuilderDelegate(
                  (_, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => ChangeNotifierProvider(
                                child: ChatScreen(
                                    conversation: value.conversations[index]),
                                create: (_) => ChatScreenViewModel(),
                              ),
                            ),
                          );
                        },
                        child: MessageCard(
                            conversation: value.conversations[index]));
                  },
                  childCount: value.conversations.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
