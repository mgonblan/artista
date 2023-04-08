import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  CustomCheckbox(
      {this.fontStyle,
      this.alignment,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.onChange,
      this.text,
      this.width,
      this.margin});

  final CheckboxFontStyle? fontStyle;

  final Alignment? alignment;

  final bool? isRightCheck;

  final double? iconSize;

  final bool? value;

  final Function(bool)? onChange;

  final String? text;

  final double? width;

  final EdgeInsetsGeometry? margin;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  set value(bool value) {}

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildCheckboxWidget(),
          )
        : _buildCheckboxWidget();
  }

  _buildCheckboxWidget() {
    return InkWell(
      onTap: () {
        value = !(widget.value!);
        widget.onChange!(widget.value!);
      },
      child: Container(
        width: widget.width,
        margin: widget.margin ?? EdgeInsets.zero,
        child: widget.isRightCheck! ? getRightSideCheckbox() : getLeftSideCheckbox(),
      ),
    );
  }

  Widget getRightSideCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            right: 8,
          ),
          child: getTextWidget(),
        ),
        getCheckboxWidget(),
      ],
    );
  }

  Widget getLeftSideCheckbox() {
    return Row(
      children: [
        getCheckboxWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      widget.text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getCheckboxWidget() {
    return SizedBox(
      height: widget.iconSize,
      width: widget.iconSize,
      child: Checkbox(
        value: widget.value ?? false,
        onChanged: (value) {
          widget.onChange!(value!);
        },
        checkColor: ColorConstant.gray200,
        activeColor: ColorConstant.gray100,
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(
            color: ColorConstant.gray100,
          ),
        ),
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.gray400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w400,
          height: getVerticalSize(
            1.21,
          ),
        );
    }
  }
}

enum CheckboxFontStyle { UrbanistRegular14Gray400 }
