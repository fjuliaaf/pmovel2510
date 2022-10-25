import 'package:flutter/material.dart';
import 'package:sciencenotes/domain/messages.dart';

class ListMessages extends StatefulWidget {
  final Messages msg;
  const ListMessages({
    Key? key,
    required this.msg,
  }) : super(key: key);

  @override
  State<ListMessages> createState() => _ListMessagesState();
}
int x=0;

class _ListMessagesState extends State<ListMessages> {
  Widget build(BuildContext context) {
    // int number = sideMessage();
    // ((number%2) == 0) ? (number = 3) : (number=4);
    return Container(
      padding: const EdgeInsets.all(16.0),
      // color: Color.fromARGB(255, 203, 194, 194),
      // decoration: new BoxDecoration(
      //     color: Color.fromARGB(255, 203, 194, 194),

      //   borderRadius: BorderRadius.only(
          
      // )),
      child: Column(
        children: [
          const SizedBox(height: 14),
          Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                widget.msg.message,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontFamily: 'Abel-Regular'),
              ),
            ]),
          ]),
        ],
      ),
    );
  }

  int sideMessage(){
    x++;
    return x;
  }

}