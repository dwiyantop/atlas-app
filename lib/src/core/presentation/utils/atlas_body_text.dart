import 'package:flutter/material.dart';

enum AtBodyTextSize { xs, sm, md, lg, xl }

enum AtBodyTextAlign { left, center, right, start, end, justify }

enum AtBodyTextWeight { light, regular, medium, semiBold, bold, extraBold }

final Map<AtBodyTextSize, double> sizeOptions = {
  AtBodyTextSize.xs: 14.0,
  AtBodyTextSize.sm: 16.0,
  AtBodyTextSize.md: 20.0,
  AtBodyTextSize.lg: 24.0,
  AtBodyTextSize.xl: 28.0,
};

final Map<AtBodyTextAlign, TextAlign> alignOptions = {
  AtBodyTextAlign.left: TextAlign.left,
  AtBodyTextAlign.center: TextAlign.center,
  AtBodyTextAlign.right: TextAlign.right,
  AtBodyTextAlign.start: TextAlign.start,
  AtBodyTextAlign.end: TextAlign.end,
  AtBodyTextAlign.justify: TextAlign.justify,
};

final Map<AtBodyTextWeight, FontWeight> weightOptions = {
  AtBodyTextWeight.light: FontWeight.w300,
  AtBodyTextWeight.regular: FontWeight.w400,
  AtBodyTextWeight.medium: FontWeight.w500,
  AtBodyTextWeight.semiBold: FontWeight.w600,
  AtBodyTextWeight.bold: FontWeight.w700,
  AtBodyTextWeight.extraBold: FontWeight.w800,
};

class AtlasBodyText extends StatelessWidget {
  final String value;
  final AtBodyTextSize size;
  final AtBodyTextWeight weight;
  final AtBodyTextAlign? align;
  final Color? color;
  final bool? softWrap;
  final int? maxLines;

  const AtlasBodyText(
    this.value, {
    super.key,
    this.size = AtBodyTextSize.sm,
    this.weight = AtBodyTextWeight.regular,
    this.align = AtBodyTextAlign.left,
    this.color,
    this.softWrap,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final Map<AtBodyTextSize, TextStyle> textStyle = {
      AtBodyTextSize.xs: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.bodySmall!.color,
          ),
      AtBodyTextSize.sm: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.bodySmall!.color,
          ),
      AtBodyTextSize.md: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.bodyMedium!.color,
          ),
      AtBodyTextSize.lg: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.bodyLarge!.color,
          ),
      AtBodyTextSize.xl: Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.bodyLarge!.color,
          ),
    };

    return Text(
      value,
      style: textStyle[size],
      textAlign: alignOptions[align],
      softWrap: softWrap,
      maxLines: maxLines,
    );
  }
}
