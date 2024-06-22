import 'package:flutter/material.dart';

class CustomDropdownButton<T> extends StatefulWidget {
  final List<T> items;
  final List<Icon> leading;
  final T selectedValue;
  final Function(T?) onChanged;
  final InputDecoration? decoration;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    required this.leading,
    this.decoration,
  }) : assert(items.length == leading.length,
            'Items and leading must have the same length');

  @override
  CustomDropdownButtonState<T> createState() => CustomDropdownButtonState<T>();
}

class CustomDropdownButtonState<T> extends State<CustomDropdownButton<T>> {
  late T _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: widget.decoration ?? const InputDecoration(),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<T>(
          value: _selectedValue,
          onChanged: (T? newValue) {
            setState(() {
              _selectedValue = newValue!;
            });
            widget.onChanged(newValue);
          },
          items: List<DropdownMenuItem<T>>.generate(
            widget.items.length,
            (index) {
              return DropdownMenuItem<T>(
                value: widget.items[index],
                child: ListTile(
                  leading: widget.leading[index],
                  title: Text(widget.items[index].toString()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
