import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String labelText;
  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String)? onChanged;
  final int? maxLines;
  final int? minLines;
  final bool readOnly;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final bool autofocus;
  final FocusNode? focusNode;
  final String? errorText;
  final TextCapitalization textCapitalization;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;

  const AppTextField({
    super.key,
    this.controller,
    required this.labelText,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.validator,
    this.inputFormatters,
    this.onChanged,
    this.maxLines = 1,
    this.minLines,
    this.readOnly = false,
    this.onTap,
    this.suffixIcon,
    this.autofocus = false,
    this.focusNode,
    this.errorText,
    this.textCapitalization = TextCapitalization.none,
    this.contentPadding,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(0.2),
              width: 1.5,
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.2),
                Colors.white.withOpacity(0.1),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: theme.colorScheme.primary.withOpacity(0.1),
                blurRadius: 8,
                spreadRadius: 0,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              labelText: labelText,
              hintText: hintText,
              prefixIcon: prefixIcon != null 
                ? Icon(
                    prefixIcon,
                    color: theme.colorScheme.primary.withOpacity(0.7),
                  ) 
                : null,
              suffixIcon: suffixIcon,
              errorText: errorText,
              contentPadding: contentPadding ?? const EdgeInsets.all(16),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              filled: true,
              fillColor: Colors.transparent,
              labelStyle: TextStyle(
                color: theme.colorScheme.onSurface.withOpacity(0.7),
              ),
              hintStyle: TextStyle(
                color: theme.colorScheme.onSurface.withOpacity(0.5),
              ),
            ),
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurface,
            ),
            obscureText: obscureText,
            keyboardType: keyboardType,
            validator: validator,
            inputFormatters: inputFormatters,
            onChanged: onChanged,
            maxLines: maxLines,
            minLines: minLines,
            readOnly: readOnly,
            onTap: onTap,
            autofocus: autofocus,
            focusNode: focusNode,
            enabled: enabled,
            textCapitalization: textCapitalization,
          ),
        ),
      ),
    );
  }
}
