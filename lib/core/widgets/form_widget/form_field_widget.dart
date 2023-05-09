import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../configs/spacing_size.dart';

class FormFieldWidget extends StatefulWidget {
  const FormFieldWidget(
      {Key? key,
      required this.name,
      this.controller,
      this.hintText,
      this.labelText,
      this.validator,
      this.inputFormatters,
      this.keyboardType,
      this.maxLength,
      this.maxLines = 1,
      this.obscureField = false,
      this.onChanged,
      this.onEditingComplete,
      this.onTap,
      this.onSubmitted,
      this.initialValue,
      this.readOnly = false,
      this.contentPadding =
          const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      this.textInputAction = TextInputAction.done,
      this.prefix,
      this.prefixIcon,
      this.suffixIcon,
      this.prefixText,
      this.hintStyle,
      this.labelStyle,
      this.style,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.enable = true,
      this.decoration,
      this.isFilled = false})
      : super(key: key);

  final TextEditingController? controller;
  final String name;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final int? maxLength;
  final int maxLines;
  final bool? obscureField;
  final void Function(String?)? onChanged;
  final void Function()? onEditingComplete;
  final void Function()? onTap;
  final void Function(String?)? onSubmitted;
  final String? initialValue;
  final bool readOnly;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? prefixText;
  final Widget? suffixIcon;
  final TextInputAction? textInputAction;
  final EdgeInsetsGeometry? contentPadding;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final TextStyle? labelStyle;
  final AutovalidateMode autovalidateMode;
  final bool enable;
  final bool isFilled;

  final InputDecoration? decoration;

  @override
  State<FormFieldWidget> createState() => _FormFieldWidgetState();
}

class _FormFieldWidgetState extends State<FormFieldWidget> {
  bool _obsecureText = false;
  bool isValidated = false;

  @override
  void initState() {
    super.initState();
    _obsecureText = widget.obscureField == true ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          widget.labelText ?? "",
          style: Theme.of(context).textTheme.caption,
        ),
        Spacing.sizedBoxH_04(),
        FormBuilderTextField(
          controller: widget.controller,
          name: widget.name,
          enabled: widget.enable,
          autocorrect: false,
          initialValue: widget.initialValue,
          validator: widget.validator ??
              FormBuilderValidators.required(errorText: "Field is empty."),
          autovalidateMode: widget.autovalidateMode,
          inputFormatters: widget.inputFormatters,
          keyboardType: widget.keyboardType,
          maxLength: widget.maxLength,
          maxLengthEnforcement:
              MaxLengthEnforcement.truncateAfterCompositionEnds,
          maxLines: widget.maxLines,
          obscureText: _obsecureText,
          onSubmitted: widget.onSubmitted,
          textInputAction: widget.textInputAction,
          onChanged: widget.onChanged,
          onEditingComplete: widget.onEditingComplete,
          onTap: widget.onTap,
          readOnly: widget.readOnly,
          style: widget.style ??
              Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: Colors.black, decoration: TextDecoration.none),
          textAlignVertical: TextAlignVertical.center,
          decoration: widget.decoration ??
              InputDecoration(
                contentPadding: widget.contentPadding,
                hintText: widget.hintText,
                hintStyle: widget.hintStyle,
                prefix: widget.prefix,
                filled: widget.isFilled,
                prefixIcon: widget.prefixIcon,
                prefixText: widget.prefixText,
                suffixIcon: widget.obscureField == false
                    ? null
                    : IconButton(
                        onPressed: () {
                          setState(() {
                            _obsecureText = !_obsecureText;
                          });
                        },
                        icon: Icon(
                          _obsecureText == false
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Theme.of(context).colorScheme.onSurface,
                          size: 18,
                        )),
              ),
        ),
        Spacing.sizedBoxH_08(),
      ],
    );
  }
}
