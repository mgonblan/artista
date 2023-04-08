import 'package:artista/core/app_export.dart' show ColorConstant, getFontSize, getHorizontalSize, getPadding, getVerticalSize;
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  final ButtonPadding? padding;

  final ButtonVariant? variant;

  final ButtonFontStyle? fontStyle;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final String? text;

  final Widget? prefixWidget;

  final Widget? suffixWidget;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: widget.onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (widget.prefixWidget != null || widget.suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget.prefixWidget ?? SizedBox(),
          Text(
            widget.text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          widget.suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        widget.text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        widget.width ?? double.maxFinite,
        widget.height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(),
    );
  }

  _setPadding() {
    switch (widget.padding) {
      case ButtonPadding.PaddingAll15:
        return getPadding(
          all: 16,
        );
      case ButtonPadding.PaddingAll11:
        return getPadding(
          all: 9,
        );
      case ButtonPadding.PaddingT4:
        return getPadding(
          left: 6,
          top: 6,
          bottom: 6,
        );
      default:
        return getPadding(
          all: 5,
        );
    }
  }

  _setColor() {
    switch (widget.variant) {
      case ButtonVariant.FillBlack90066:
        return ColorConstant.black90066;
      case ButtonVariant.FillGray600:
        return ColorConstant.gray600;
      case ButtonVariant.FillGray100:
        return ColorConstant.gray100;
      case ButtonVariant.FillDeeporange500:
        return ColorConstant.deepOrange500;
      case ButtonVariant.OutlineDeeporange400:
      case ButtonVariant.OutlineDeeporange400_1:
      case ButtonVariant.OutlineGray100:
        return null;
      default:
        return ColorConstant.deepOrange400;
    }
  }

  _setTextButtonBorder() {
    switch (widget.variant) {
      case ButtonVariant.OutlineDeeporange400:
        return BorderSide(
          color: ColorConstant.deepOrange400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineDeeporange400_1:
        return BorderSide(
          color: ColorConstant.deepOrange400,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineGray100:
        return BorderSide(
          color: ColorConstant.gray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (widget.fontStyle) {
      case ButtonFontStyle.UrbanistSemiBold14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.UrbanistBold14Gray900:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.UrbanistBold14Gray10001_1:
        return TextStyle(
          color: ColorConstant.gray10001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.43,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold12Gray200:
        return TextStyle(
          color: ColorConstant.gray200,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold12WhiteA700_1:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold12Gray900_1:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistMedium16Gray100:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistMedium14Gray90001:
        return TextStyle(
          color: ColorConstant.gray90001,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.UrbanistMedium14Deeporange400_1:
        return TextStyle(
          color: ColorConstant.deepOrange400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.21,
          ),
        );
      case ButtonFontStyle.UrbanistBold16Deeporange400_1:
        return TextStyle(
          color: ColorConstant.deepOrange400,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold12Gray50_1:
        return TextStyle(
          color: ColorConstant.gray50,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold12Gray100_1:
        return TextStyle(
          color: ColorConstant.gray100,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      case ButtonFontStyle.UrbanistSemiBold16WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w600,
          height: getVerticalSize(
            1.25,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.gray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Urbanist',
          fontWeight: FontWeight.w700,
          height: getVerticalSize(
            1.25,
          ),
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll15,
  PaddingAll11,
  PaddingAll5,
  PaddingT4,
}
enum ButtonVariant {
  FillDeeporange400,
  FillBlack90066,
  FillGray600,
  FillGray100,
  OutlineDeeporange400,
  OutlineDeeporange400_1,
  OutlineGray100,
  FillDeeporange500,
}
enum ButtonFontStyle {
  UrbanistBold16Gray900,
  UrbanistSemiBold14WhiteA700,
  UrbanistBold14Gray900,
  UrbanistBold14Gray10001_1,
  UrbanistSemiBold12Gray200,
  UrbanistSemiBold12WhiteA700_1,
  UrbanistSemiBold12Gray900_1,
  UrbanistMedium16Gray100,
  UrbanistMedium14Gray90001,
  UrbanistMedium14Deeporange400_1,
  UrbanistBold16Deeporange400_1,
  UrbanistSemiBold12Gray50_1,
  UrbanistSemiBold12Gray100_1,
  UrbanistSemiBold16WhiteA700,
}
