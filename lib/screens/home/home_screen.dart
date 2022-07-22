import 'package:flutter/material.dart';
import 'package:mrca/blocs/chat_screen_view_model.dart';
import 'package:mrca/blocs/home_screen_view_model.dart';
import 'package:mrca/screens/chat/chat_screen.dart';
import 'package:mrca/screens/home/components/message_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent.withOpacity(.5),
        title: const Text(
          'Chats',
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
                height: 20,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
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
                                    conversationId:
                                        value.conversations[index].id),
                                create: (_) => ChatScreenViewModel(),
                              ),
                            ),
                          );
                        },
                        child: MessageCard(chat: value.conversations[index]));
                  },
                  childCount: value.conversations.length,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Consumer<HomeScreenViewModel>(
        builder: (_, value, child) {
          return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people_sharp),
                label: 'Social',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.manage_accounts_sharp),
                label: 'Setting',
              ),
            ],
            currentIndex: value.bottomNavIndex,
            selectedItemColor: Colors.blue[800],
            onTap: value.setBottomNavIndex,
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 64, right: 8),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
