import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final bool? value;

  final Function(bool)? onChanged;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: widget.value ?? false,
        height: getHorizontalSize(24),
        width: getHorizontalSize(40),
        toggleSize: 16,
        borderRadius: getHorizontalSize(
          12.00,
        ),
        switchBorder: Border.all(
          color: ColorConstant.gray400,
          width: getHorizontalSize(
            1.00,
          ),
        ),
        activeToggleColor: ColorConstant.gray100,
        inactiveToggleColor: ColorConstant.gray400,
        onToggle: (value) {
          widget.onChanged!(value);
        },
      ),
    );
  }
}
