import 'package:flutter/material.dart';

class MyDialog extends StatefulWidget {
  const MyDialog({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  String _selectedOption = ''; // Default selected option

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Quick Poll',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Lorem ipsum dolor sit amet consectetur. Adipiscing nec ipsum nulla aliquam ullamcorper. Tempor cras orci libero egestas praesent eu.',
            style: TextStyle(decoration: TextDecoration.none),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Radio(
                value: 'Yes',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              const Text(
                'Yes',
                style: TextStyle(decoration: TextDecoration.none),
              ),
              Radio(
                value: 'No',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              const Text(
                'No',
                style: TextStyle(decoration: TextDecoration.none),
              ),
              Radio(
                value: 'Maybe',
                groupValue: _selectedOption,
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value!;
                  });
                },
              ),
              const Text(
                'Maybe',
                style: TextStyle(decoration: TextDecoration.none),
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
