import 'package:flutter/material.dart';

class ReusableDropdownButtonFormField extends StatelessWidget {
  final List<String> items;

    final void Function(String? value)  onChanged;

    final String hint;


  ReusableDropdownButtonFormField({
    required this.items,

    required this.onChanged,
    required this.hint

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,


      child: DropdownButtonFormField(
        hint: Text(hint),

        alignment: AlignmentDirectional.topStart,
        isExpanded: true,
        itemHeight: 50,
        isDense: false,
        menuMaxHeight: 80,


        decoration: InputDecoration(
          border: OutlineInputBorder(),



        ),

        items: items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            alignment: AlignmentDirectional.topStart,
            value: value,
            child: Text(value, style: TextStyle(fontSize: 14),),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
