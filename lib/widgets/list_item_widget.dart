import 'package:flutter/material.dart';
import 'package:whatsappclone/models/info.dart';

class ListItemWidget extends StatefulWidget {
  const ListItemWidget({Key? key}) : super(key: key);

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){},
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      NetworkImage(info[index]['profilePic'].toString()),
                ),
                title: Text(info[index]['name'].toString()),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Text(info[index]['message'].toString()),
                ),
                trailing: Text(info[index]['time'].toString()),
              ),
            );
          }),
    );
  }
}
