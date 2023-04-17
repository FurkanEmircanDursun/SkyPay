import 'dart:math';
import 'package:flutter/material.dart';

class ChatBotPage extends StatefulWidget {
  @override
  _ChatBotPageState createState() => _ChatBotPageState();
}

class _ChatBotPageState extends State<ChatBotPage> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];
  final List<String> _botResponses = [
    "Emin değilim, tekrar sorabilir misin?",
    "Sanırım öyle, ama emin değilim.",
    "Kesinlikle!",
    "Kesinlikle hayır.",
    "Muhtemelen öyle.",
    "Kesinlikle eminim!",
    "Bu soruya cevap veremeyeceğim.",
    "Evet, doğru.",
    "Hayır, yanılıyorsun.",
    "Muhtemelen öyle değil.",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  reverse: true,
                  itemCount: _messages.length,
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(_messages[index]),
                  ),
                ),
              ),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Bir soru sorun...',
                ),
                onSubmitted: _handleSubmitted,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmitted(String text) {
    _controller.clear();
    setState(() {
      _messages.insert(0, "Siz: $text");
      String response = _botResponses[Random().nextInt(_botResponses.length)];
      _messages.insert(0, "ChatBot: $response");
    });
  }
}