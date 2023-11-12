import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../helpers/const.dart';
import '../styles/app_strings.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.keyName = '',
    required this.hintText,
    // this.onValidate,
    // this.onSaved,
    this.controller,
    this.maxLength,
    this.initialValue = "",
    this.obscureText = false,
    this.fontSize = 18,
    this.hintFontSize = 15,
    this.paddingLeft = 20,
    this.paddingRight = 20,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius = 5.0,
    this.borderColor = Colors.grey,
    this.borderFocusColor = Colors.black54,
    this.borderWidth = 2,
    this.focusedBorderWidth = 2,
    this.enabledBorderWidth = 1,
    this.showPrefixIcon = false,
    this.prefixIconColor = Colors.redAccent,
    this.prefixIconPaddingLeft = 0.0,
    this.prefixIconPaddingRight = 0.0,
    this.prefixIconPaddingTop = 0.0,
    this.prefixIconPaddingBottom = 0.0,
    this.isMultiline = false,
    this.onChange,
    this.textColor = Colors.black,
    this.hintColor = Colors.grey,
    this.validationColor = Colors.redAccent,
    this.contentPadding = 5.0,
    this.multilineRows = 10,
    this.keyboardType = TextInputType.text,
    this.backgroundColor = Colors.white,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textInputAction,
    // this.onFieldSubmitted,
    this.focusNode,
    this.cursorColor,
    this.inputFormatters,
    this.readOnly = false,
    this.onSubmitted,
  }) : super(key: key);

  final String keyName;
  final String hintText;
  // final String? Function(String?)? onValidate;
  // final String? Function(String?)? onSaved;
  final TextEditingController? controller;
  final int? maxLength;
  final String initialValue;
  final FocusNode? focusNode;
  final bool obscureText;
  final double fontSize;
  final double hintFontSize;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final double borderRadius;
  final Color borderColor;
  final Color borderFocusColor;
  final double borderWidth;
  final double focusedBorderWidth;
  final double enabledBorderWidth;
  final bool showPrefixIcon;
  final Color prefixIconColor;
  final double prefixIconPaddingLeft;
  final double prefixIconPaddingRight;
  final double prefixIconPaddingTop;
  final double prefixIconPaddingBottom;
  final bool isMultiline;
  final Function? onChange;
  // final void Function(String)? onFieldSubmitted;
  final Color textColor;
  final Color hintColor;
  final Color validationColor;
  final double contentPadding;
  final int multilineRows;
  final TextInputType keyboardType;
  final Color backgroundColor;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final Color? cursorColor;
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: paddingLeft,
        right: paddingRight,
        top: paddingTop,
        bottom: paddingBottom,
      ),
      child: TextField(
        enableInteractiveSelection: true,
        // initialValue: initialValue,
        controller: controller,
        // key: Key(initialValue.toString()),
        readOnly: readOnly,
        onSubmitted: onSubmitted,
        obscureText: obscureText,
        focusNode: focusNode,
        textAlign: textAlign,
        textDirection: textDirection,
        textAlignVertical: textAlignVertical,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        maxLines: isMultiline ? multilineRows : 1,
        maxLength: maxLength,
        cursorColor: cursorColor ?? Colors.black,
        inputFormatters: inputFormatters,
        // validator: onValidate,
        // onSaved: onSaved,
        onChanged: (val) {
          onChange != null ? onChange!(val) : null;
        },
        // onFieldSubmitted: (val) {
        //   onFieldSubmitted != null ? onFieldSubmitted!(val) : null;
        // },
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: backgroundColor,
          contentPadding: EdgeInsets.all(contentPadding),
          errorStyle: TextStyle(
            color: validationColor,
          ),
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: hintFontSize,
            color: hintColor,
          ),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
              width: enabledBorderWidth,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderFocusColor,
              width: focusedBorderWidth,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: showPrefixIcon
              ? Padding(
                  padding: EdgeInsets.only(
                    left: prefixIconPaddingLeft,
                    right: prefixIconPaddingRight,
                    top: prefixIconPaddingTop,
                    bottom: prefixIconPaddingBottom,
                  ),
                  child: IconTheme(
                    data: IconThemeData(color: prefixIconColor),
                    child: prefixIcon!,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

class TextFormFieldWidgetWithLable extends StatelessWidget {
  const TextFormFieldWidgetWithLable({
    Key? key,
    this.keyName = '',
    required this.hintText,
    // this.onValidate,
    // this.onSaved,
    this.controller,
    this.maxLength,
    this.initialValue = "",
    this.obscureText = false,
    this.fontSize = 18,
    this.hintFontSize = 15,
    this.paddingLeft = 10,
    this.paddingRight = 10,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.prefixIcon,
    this.suffixIcon,
    this.borderRadius = 5.0,
    this.borderColor = Colors.grey,
    this.borderFocusColor = Colors.black54,
    this.borderWidth = 2,
    this.focusedBorderWidth = 2,
    this.enabledBorderWidth = 1,
    this.showPrefixIcon = false,
    this.prefixIconColor = Colors.redAccent,
    this.prefixIconPaddingLeft = 30,
    this.prefixIconPaddingRight = 10,
    this.prefixIconPaddingTop = 0,
    this.prefixIconPaddingBottom = 0,
    this.isMultiline = false,
    this.onChange,
    this.textColor = Colors.black,
    this.hintColor = Colors.grey,
    this.validationColor = Colors.redAccent,
    this.contentPadding = 6,
    this.multilineRows = 4,
    this.keyboardType = TextInputType.text,
    this.backgroundColor = Colors.white,
    required this.labelName,
    this.labelFontSize = 17.0,
    this.labelBold = true,
    this.labelColor,
    this.labelPaddingLeft = 10.0,
    this.labelPaddingRight = 10.0,
    this.labelPaddingTop = 10.0,
    this.labelPaddingBottom = 5.0,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textInputAction,
    this.labelTextAlign = TextAlign.left,
    this.labelAlign,
    this.focusNode,
    this.cursorColor,
    this.inputFormatters,
    this.readOnly = false,
  }) : super(key: key);

  final String labelName;
  final double labelFontSize;
  final bool labelBold;
  final Color? labelColor;
  final String keyName;
  final String hintText;
  final bool readOnly;
  // final String? Function(String?)? onValidate;
  // final String? Function(String?)? onSaved;
  final TextEditingController? controller;
  final int? maxLength;
  final String initialValue;
  final bool obscureText;
  final double fontSize;
  final double hintFontSize;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double labelPaddingLeft;
  final double labelPaddingRight;
  final double labelPaddingTop;
  final double labelPaddingBottom;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final double borderRadius;
  final Color borderColor;
  final Color borderFocusColor;
  final double borderWidth;
  final double focusedBorderWidth;
  final double enabledBorderWidth;
  final bool showPrefixIcon;
  final Color prefixIconColor;
  final double prefixIconPaddingLeft;
  final double prefixIconPaddingRight;
  final double prefixIconPaddingTop;
  final double prefixIconPaddingBottom;
  final bool isMultiline;
  final Function? onChange;
  final Color textColor;
  final Color hintColor;
  final Color validationColor;
  final double contentPadding;
  final int multilineRows;
  final TextInputType keyboardType;
  final Color backgroundColor;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final TextAlignVertical? textAlignVertical;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final TextAlign labelTextAlign;
  final AlignmentGeometry? labelAlign;
  final FocusNode? focusNode;
  final Color? cursorColor;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: paddingLeft,
              right: paddingRight,
              top: labelPaddingTop,
              bottom: labelPaddingBottom,
            ),
            child: Align(
              alignment: labelAlign ??
                  (appLanguage == AppStrings.ar
                      ? Alignment.centerRight
                      : Alignment.centerLeft),
              child: Text(
                labelName,
                textAlign:
                    appLanguage == AppStrings.ar ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  fontSize: labelFontSize,
                  fontWeight: labelBold ? FontWeight.bold : null,
                  color: labelColor,
                ),
              ),
            ),
          ),
          TextFormFieldWidget(
            keyName: keyName,
            hintText: hintText,
            textAlign: textAlign,
            textDirection: textDirection,
            textAlignVertical: textAlignVertical,
            textCapitalization: textCapitalization,
            textInputAction: textInputAction,
            inputFormatters: inputFormatters,
            readOnly: readOnly,
            // onValidate: onValidate,
            // onSaved: onSaved,
            controller: controller,
            maxLength: maxLength,
            initialValue: initialValue,
            obscureText: obscureText,
            fontSize: fontSize,
            hintFontSize: hintFontSize,
            paddingLeft: paddingLeft,
            paddingRight: paddingRight,
            paddingTop: paddingTop,
            paddingBottom: paddingBottom,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            borderRadius: borderRadius,
            borderColor: borderColor,
            borderFocusColor: borderFocusColor,
            borderWidth: borderWidth,
            enabledBorderWidth: enabledBorderWidth,
            focusedBorderWidth: focusedBorderWidth,
            showPrefixIcon: showPrefixIcon,
            prefixIconColor: prefixIconColor,
            prefixIconPaddingLeft: prefixIconPaddingLeft,
            prefixIconPaddingRight: prefixIconPaddingRight,
            prefixIconPaddingTop: prefixIconPaddingTop,
            prefixIconPaddingBottom: prefixIconPaddingBottom,
            onChange: onChange,
            isMultiline: isMultiline,
            textColor: textColor,
            hintColor: hintColor,
            validationColor: validationColor,
            multilineRows: multilineRows,
            contentPadding: contentPadding,
            keyboardType: keyboardType,
            backgroundColor: backgroundColor,
            focusNode: focusNode,
            cursorColor: cursorColor,
          ),
        ],
      ),
    );
  }
}
