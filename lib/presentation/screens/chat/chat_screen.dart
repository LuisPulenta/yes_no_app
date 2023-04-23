import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi amor '),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.biografiasyvidas.com/actores/fotos/bardot_1.jpg'),
          ),
        ),
      ),
      body: _chatView(),
    );
  }
}

//--------------------- _chatView -----------------------------

class _chatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return index % 2 == 0 ? HerMessageBubble() : MyMessageBubble();
              },
            )),
            SizedBox(
              height: 10,
            ),
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
