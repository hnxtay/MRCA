import 'package:flutter/material.dart';
import 'package:mrca/blocs/home_screen_view_model.dart';
import 'package:mrca/dummy_data.dart';
import 'package:mrca/screens/home/components/bottom_button.dart';
import 'package:mrca/screens/home/components/message_card.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return HomeScreenViewModel();
      },
      child: Scaffold(
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
                      return MessageCard(chat: value.conversations[index]);
                    },
                    childCount: chatList.length,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          alignment: Alignment.center,
          height: 50,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black26, blurRadius: 10),
            ],
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(10),
            ),
          ),
          child: Row(
            children: const [
              Spacer(),
              BottomNavBarCustomIcon(
                iconUrl: 'assets/svg/send_symbol.svg',
                isActive: true,
                notifications: 5,
              ),
              Spacer(),
              BottomNavBarCustomIcon(
                iconUrl: 'assets/svg/call.svg',
                notifications: 0,
              ),
              Spacer(flex: 3),
              BottomNavBarCustomIcon(
                iconUrl: 'assets/svg/heart.svg',
                notifications: 0,
              ),
              Spacer(),
              BottomNavBarCustomIcon(
                iconUrl: 'assets/svg/person.svg',
                notifications: 0,
              ),
              Spacer(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
