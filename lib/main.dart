import 'package:flutter/material.dart';

void main() {
  runApp(const PopUpButton());
}

class PopUpButton extends StatefulWidget {
  const PopUpButton({super.key});

  @override
  State<PopUpButton> createState() => _PopUpMenuButtonState();
}

class _PopUpMenuButtonState extends State<PopUpButton>{
  String title = 'Items';
  String firstItem = 'FirstItem';
  String secondItem = 'SecondItem';
  String thirdItem = 'ThirdItem';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ListTile(
            title: Text(title),
            trailing:PopupMenuButton(
              itemBuilder: (context)=>[
                PopupMenuItem(
                  value: firstItem,
                  child: Text(firstItem),
                ),
                PopupMenuItem(
                  value: secondItem,
                  child: Text(secondItem),
                ),
                PopupMenuItem(
                  value: thirdItem,
                  child: Text(thirdItem),
                ),
              ],
              onSelected: (value){
                setState(() {
                  title = value;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

