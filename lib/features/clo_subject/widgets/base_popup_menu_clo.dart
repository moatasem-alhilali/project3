import 'package:flutter/material.dart';

class BasePopupMenuClo extends StatelessWidget {
  BasePopupMenuClo(
  
  );


  //
  final List<bool> _items = [true, false];
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PopupMenuButton(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        onSelected: (newVal) {
         
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<bool>>[
            for (int i = 0; i < _items.length; i++)
              PopupMenuItem<bool>(
                value: _items[i],
                child: Text(
                  "${_items[i]}",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
          ];
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const[
            Text(
              "data",
              textAlign: TextAlign.center,
              style:  TextStyle(
                color: Colors.black,
              ),
            ),
             Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
