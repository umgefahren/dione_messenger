import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  runApp(DioneApp());
}

class DioneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const PlatformApp(
      title: 'Dione Messenger',
      home: ChatListView(),
    );
  }
}

class ChatListView extends StatelessWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Chats'),
      ),
      body: SafeArea(
        child: Scrollbar(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext builder, int index) {
                  return Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Icon(CupertinoIcons.profile_circled),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: PlatformText(
                            'Hello ' + index.toString(),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(CupertinoIcons.arrow_right),
                      ),
                    ],
                  );
                })),
      ),
    );
  }
}
