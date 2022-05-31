import 'package:flutter/material.dart';

class WebSearchBarWidget extends StatelessWidget {
  const WebSearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width * 0.30,
      child: TextField(
        decoration: InputDecoration(
            fillColor: Colors.blue,
            prefixIcon: const Icon(Icons.search),
            hintText: "Search",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            contentPadding: const EdgeInsets.all(5)),
      ),
    );
  }
}
