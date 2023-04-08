import 'package:artista/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  final IconButtonShape? shape;

  final IconButtonPadding? padding;

  final IconButtonVariant? variant;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(widget.height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(widget.width ?? 0),
          height: getSize(widget.height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: widget.child,
        ),
        onPressed: widget.onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (widget.padding) {
      case IconButtonPadding.PaddingAll14:
        return getPadding(
          all: 14,
        );
      default:
        return getPadding(
          all: 7,
        );
    }
  }

  _setColor() {
    switch (widget.variant) {
      case IconButtonVariant.FillDeeporange400:
        return ColorConstant.deepOrange400;
      case IconButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case IconButtonVariant.FillGray900:
        return ColorConstant.gray900;
      case IconButtonVariant.OutlineGray200_1:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (widget.variant) {
      case IconButtonVariant.FillDeeporange400:
      case IconButtonVariant.FillGray100:
      case IconButtonVariant.FillGray900:
        return null;
      default:
        return Border.all(
          color: ColorConstant.gray200,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setBorderRadius() {
    switch (widget.shape) {
      case IconButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        );
      case IconButtonShape.CircleBorder26:
        return BorderRadius.circular(
          getHorizontalSize(
            26.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            13.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  CircleBorder16,
  CircleBorder26,
  CircleBorder13,
}
enum IconButtonPadding {
  PaddingAll7,
  PaddingAll14,
}
enum IconButtonVariant {
  OutlineGray200_1,
  FillDeeporange400,
  FillGray100,
  FillGray900,
}
