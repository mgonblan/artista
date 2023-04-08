import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  CustomDropDown(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator});

  final DropDownPadding? padding;

  final DropDownVariant? variant;

  final DropDownFontStyle? fontStyle;

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final FocusNode? focusNode;

  final Widget? icon;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final List<SelectionPopupModel>? items;

  final Function(SelectionPopupModel)? onChanged;

  final FormFieldValidator<SelectionPopupModel>? validator;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: widget.width ?? double.maxFinite,
      margin: widget.margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: widget.focusNode,
        icon: widget.icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: widget.items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          widget.onChanged!(value!);
        },
        validator: widget.validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: widget.hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      prefixIcon: widget.prefix,
      prefixIconConstraints: widget.prefixConstraints,
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      case DropDownFontStyle.UrbanistBold24:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.21,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (widget.variant) {
      case DropDownVariant.OutlineGray600:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray600,
            width: 1,
          ),
        );
      case DropDownVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.gray600,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (widget.variant) {
      case DropDownVariant.OutlineGray600:
        return false;
      case DropDownVariant.None:
        return false;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (widget.padding) {
      default:
        return getPadding(
          left: 17,
          top: 17,
          bottom: 17,
        );
    }
  }
}

enum DropDownPadding {
  PaddingT16,
}
enum DropDownVariant {
  None,
  OutlineGray600,
}
enum DropDownFontStyle {
  UrbanistMedium14Gray400,
  UrbanistBold24,
}
