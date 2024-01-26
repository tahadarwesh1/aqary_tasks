
import 'package:flutter/material.dart';

class RateItem extends StatefulWidget {
  const RateItem({super.key});

  @override
  State<RateItem> createState() => _RateItemState();
}

class _RateItemState extends State<RateItem> {
  String _value = 'good';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15.0,
        left: 8.0,
        right: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Rate:',
            style: TextStyle(fontSize: 30),
          ),
          ListTile(
            title: const Text('Good'),
            trailing: Radio(
              value: 'good',
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value.toString();
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Bad'),
            trailing: Radio(
              value: 'bad',
              groupValue: _value,
              onChanged: (value) {
                setState(() {
                  _value = value.toString();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
