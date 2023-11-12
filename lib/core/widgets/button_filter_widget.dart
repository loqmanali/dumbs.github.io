
import 'package:flutter/material.dart';
import 'custom_text.dart';

class ButtonFilterWidget extends StatelessWidget {
  const ButtonFilterWidget({
    super.key,
    required this.bgColor,
    required this.text,
    this.borderColor = Colors.transparent,
    this.textColor = Colors.white,
  });

  final Color bgColor;
  final Color borderColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 7.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: CustomText(
        text: text,
        color: textColor,
      ),
    );
  }
}

class ButtonFilterOptionsWidget<T> extends StatefulWidget {
  const ButtonFilterOptionsWidget({
    super.key,
    required this.options,
    required this.setOptions,
    this.bgColor = Colors.transparent,
    this.borderColor = Colors.transparent,
    this.selectedTextColor = Colors.white,
    this.unselectedTextColor = Colors.white,
    this.allowMultiple = false,
    this.scrollDirection = Axis.horizontal,
    this.height = 50.0,
    this.margin = 0.0,
    this.padding = 8.0,
    this.borderRadius = 5.0,
    this.alignment = Alignment.centerLeft,
    this.maxChoices = 1,
  });

  final Color bgColor;
  final Color borderColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final List<T> options;
  final Function(Set<T>) setOptions;
  final bool allowMultiple;
  final Axis scrollDirection;
  final double height;
  final double margin;
  final double padding;
  final double borderRadius;
  final AlignmentGeometry alignment;
  final int maxChoices;

  @override
  State<ButtonFilterOptionsWidget<T>> createState() => _ButtonFilterOptionsWidgetState<T>();
}

class _ButtonFilterOptionsWidgetState<T> extends State<ButtonFilterOptionsWidget<T>> {
  late Set<int> _selectedOption;
  late List<T> optionsList;

  @override
  void initState() {
    super.initState();
    _selectedOption = <int>{};
    optionsList = widget.options.toList();
    // _loadSelectedOption();
  }
  //
  // // Load selected options from SharedPreferences
  // Future<void> _loadSelectedOption() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   Set<int> loadedOptions = (prefs.getStringList('selectedOptions') ?? []).map((e) => int.parse(e)).toSet();
  //
  //   setState(() {
  //     _selectedOption = loadedOptions;
  //     log('loadedOptions: $loadedOptions', name: 'button_filter_widget.dart');
  //
  //     // If there are saved options, notify the parent widget
  //     if (_selectedOption.isNotEmpty) {
  //       widget.setOptions(_selectedOption.map((e) => optionsList[e]).toSet());
  //     }
  //   });
  // }
  //
  // // Save selected options to SharedPreferences
  // Future<void> _saveSelectedOption() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setStringList('selectedOptions', _selectedOption.map((e) => e.toString()).toList());
  // }

  @override
  Widget build(BuildContext context) {
    List<Widget> textToggles = <Widget>[];

    for (int i = 0; i < widget.options.length; i++) {
      final item = widget.options[i];
      final index = i;

      textToggles.add(
        GestureDetector(
          onTap: () {
            if (!widget.allowMultiple) {
              // can't deselect option by clicking on it again
              if (_selectedOption.contains(item)) {
                return;
              }
              _selectedOption..clear()..add(index);
            } else {
              // if item is already selected, deselect it
              if (_selectedOption.contains(index)) {
                if (_selectedOption.length > 1) {
                  _selectedOption.remove(index);
                }
              } else {
                // if max choices is reached, don't select more
                if (_selectedOption.length == widget.maxChoices) {
                  _selectedOption.remove(_selectedOption.last);
                  _selectedOption.add(index);
                } else {
                  _selectedOption.add(index);
                }
              }
            }
            Set<T> selectedOptionsName = {};
            for (int i in _selectedOption) {
              selectedOptionsName.add(optionsList[i]);
            }
            widget.setOptions(selectedOptionsName);
            // _saveSelectedOption();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Container(
              alignment: widget.alignment,
              margin: EdgeInsets.all(widget.margin),
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
              decoration: BoxDecoration(
                color: _selectedOption.contains(index) ? widget.bgColor : Colors.transparent,
                borderRadius: BorderRadius.circular(widget.borderRadius),
                border: Border.all(
                  color: _selectedOption.contains(index) ? Colors.transparent : widget.borderColor,
                ),
              ),
              child: CustomText(
                text: item.toString(),
                color: _selectedOption.contains(index) ? widget.selectedTextColor : widget.unselectedTextColor,
              ),
            ),
          ),
        ),
      );
    }

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: List.generate(textToggles.length, (index) {
          return textToggles[index];
        }),
      ),
    );

    // return SizedBox(
    //   height: widget.height,
    //   child: ListView(
    //     physics: const BouncingScrollPhysics(),
    //     scrollDirection: widget.scrollDirection,
    //     children: textToggles.animateList(interval: 20.ms),
    //   ),
    // );
  }
}



// extension IterableExtension<T> on Iterable<T> {
//   Iterable<E> whereIndexed<E>(bool Function(int index, T element) test) sync* {
//     var index = 0;
//     for (final element in this) {
//       if (test(index, element)) {
//         yield element;
//       }
//       index += 1;
//     }
//   }
// }