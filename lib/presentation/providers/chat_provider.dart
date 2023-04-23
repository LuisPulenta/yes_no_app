import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola amor!', fromWho: FromWho.me),
    Message(text: 'Ya regresaste del trabajo?', fromWho: FromWho.me),
    Message(text: 'Si ya estoy en casa', fromWho: FromWho.her),
    Message(text: 'Ok', fromWho: FromWho.me),
    Message(text: 'Yo enseguida llego', fromWho: FromWho.me),
    Message(text: 'Llevo lo que me pediste', fromWho: FromWho.me),
    Message(text: 'Ponés la pava para tomar unos mater?', fromWho: FromWho.me),
    Message(text: 'Si dale', fromWho: FromWho.her),
  ];

  Future<void> sendMessage(String text) async {
    //TODO: implementar método
  }
}
