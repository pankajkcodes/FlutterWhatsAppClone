import 'package:flutter/material.dart';
import 'package:whatsappclone/widgets/list_item_widget.dart';
import 'package:whatsappclone/widgets/web_profile_widget.dart';
import 'package:whatsappclone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatefulWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  State<WebScreenLayout> createState() => _WebScreenLayoutState();
}

class _WebScreenLayoutState extends State<WebScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileWidget(),
                  WebSearchBarWidget(),
                  ListItemWidget()
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: Column(children: [

            ],),
          )
        ],
      ),
    );
  }
}
