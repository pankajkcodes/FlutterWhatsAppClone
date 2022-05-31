import 'package:flutter/material.dart';
import 'package:whatsappclone/views/fragments/calls_fragments.dart';
import 'package:whatsappclone/views/fragments/home_fragments.dart';
import 'package:whatsappclone/views/fragments/status_fragments.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp Flutter"),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
            bottom: const TabBar(tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ]),
          ),
          body: const TabBarView(
            children: [
              HomeFragments(),
              StatusFragment(),
              CallFragment(),
            ],
          ),
        ));
  }
}
