import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cholo/components/message.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  List<Message> messages = [
    Message(text: 'Vai koi', date: DateTime.now().subtract(Duration(days: 3, minutes: 3)), isSentByMe: false),
    Message(text: 'Pickup Location e vai', date: DateTime.now().subtract(Duration(days : 3, minutes: 4)), isSentByMe: true),
    Message(text: 'Accha vai', date: DateTime.now().subtract(Duration(days: 3,minutes: 5)), isSentByMe: false),
    Message(text: 'Ashtesi', date: DateTime.now().subtract(Duration(days: 3, minutes: 7)), isSentByMe: false),
    Message(text: 'taratari vai', date: DateTime.now().subtract(Duration(days: 3, minutes: 8)), isSentByMe: true),
    Message(text: 'Ji vai', date: DateTime.now().subtract(Duration(days: 3, minutes: 9)), isSentByMe: false),
  ].reversed.toList();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: const Text('Inbox'),
        backgroundColor: Color(0xffEB5757) ,
      ),
      body: Column(
        children: [
          Expanded(child: GroupedListView<Message,DateTime> (   
            padding: const EdgeInsets.all(8),
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            elements: messages,
            groupBy: (message) => DateTime(
              message.date.year,
              message.date.month,
              message.date.day,
            ),
            groupHeaderBuilder: (Message message) => SizedBox(
              height: 40,
              child: Center(  
                child: Card(
                  color: Color(0xffEB5757),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(  
                      DateFormat.yMMMd().format(message.date),
                      style:  GoogleFonts.poppins(

                      ),
                    ),
                    ),
                ),
              ),
            ),
            itemBuilder: (context, Message message) => Align(
              alignment: message.isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
              child: Card(
                color: message.isSentByMe ?   Colors.white:Color.fromARGB(255, 199, 137, 137),
                elevation: 8,
                child: Padding (  
                  padding: const EdgeInsets.all(12),
                  child: Text(message.text),
                ),
              ),
            ),
          )),
          Container(
            color: Color.fromARGB(255, 221, 220, 220),
            child: TextField(
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(12),
                hintText: 'Type your messages here..',
              ),
              onSubmitted: (text) {
                final message = Message(  
                  text: text,
                  date: DateTime.now(),
                  isSentByMe: true,
                );

                setState(() {
                  messages.add(message);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}