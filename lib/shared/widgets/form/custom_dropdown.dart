import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> options;
  final String? selectedValue;
  final String labelText;
  final IconData? prefixIcon;
  final void Function(String?) onChanged;
  final String? Function(String?)? validator;

  const CustomDropdown({
    super.key,
    required this.options,
    this.selectedValue,
    required this.labelText,
    this.prefixIcon,
    required this.onChanged,
    this.validator,
  });

  void _showCustomDropdownDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              color:
                  Theme.of(context).scaffoldBackgroundColor.withOpacity(0.95),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select $labelText',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ...options.map((String option) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () {
                        onChanged(option);
                        Navigator.of(context).pop();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 8),
                        child: Row(
                          children: [
                            Text(
                              option,
                              style: TextStyle(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                fontWeight: selectedValue == option
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                            if (selectedValue == option)
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Icon(
                                  Icons.check,
                                  color: Theme.of(context).colorScheme.primary,
                                  size: 20,
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showCustomDropdownDialog(context),
      child: AbsorbPointer(
        child: TextFormField(
          controller: TextEditingController(
            text: selectedValue ?? '',
          ),
          decoration: InputDecoration(
            labelText: labelText,
            //prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            prefixIcon: prefixIcon != null
                ? Icon(
                    prefixIcon,
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.7),
                    size: 20,
                  )
                : null,
            suffixIcon: const Icon(Icons.arrow_drop_down),
            filled: false,
            fillColor: Colors.transparent,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.5),
              ),
            ),
          ),
          style: TextStyle(
            color: Theme.of(context).colorScheme.onBackground,
          ),
          validator: validator ??
              (value) {
                if (selectedValue == null || selectedValue!.isEmpty) {
                  return 'Please select a $labelText';
                }
                return null;
              },
        ),
      ),
    );
  }
}
