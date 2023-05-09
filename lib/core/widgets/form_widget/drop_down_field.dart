import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:webpoint_test/core/configs/spacing_size.dart';

class DropDownField<T> extends StatelessWidget {
  const DropDownField({
    required this.name,
    required this.items,
    this.initialValue,
    this.hintText,
    this.validator,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
    this.onChanged,
    this.onTap,
    this.prefixIcon,
    this.onReset,
    this.onSaved,
    this.allowClear = false,
    this.enableLabel = true,
    this.labelText,
    this.enabled = true,
    this.style,
    this.fillColor = Colors.white,
    Key? key,
  }) : super(key: key);

  final String name;
  final String? hintText;
  final String? labelText;
  final String? Function(T?)? validator;
  final EdgeInsetsGeometry? contentPadding;
  final T? initialValue;
  final List<DropdownMenuItem<T>> items;
  final Widget? prefixIcon;
  final void Function(T? value)? onChanged;
  final void Function(T?)? onSaved;
  final void Function()? onTap;
  final void Function()? onReset;
  final bool allowClear;
  final bool enableLabel;
  final bool enabled;
  final Color fillColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          labelText ?? "",
          style: Theme.of(context).textTheme.caption,
        ),
        Spacing.sizedBoxH_04(),
        FormBuilderDropdown<T>(
          enabled: enabled,
          items: items,
          name: name,
          initialValue: initialValue,
          onChanged: onChanged,
          onTap: onTap,
          onReset: onReset,
          onSaved: onSaved,
          validator: validator,
          style: style ??
              Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: Colors.black, decoration: TextDecoration.none),
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: contentPadding,
            fillColor: fillColor,
          ),
        ),
        Spacing.sizedBoxH_02(),
      ],
    );
  }
}
