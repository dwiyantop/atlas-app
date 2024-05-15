import 'package:flutter/material.dart';

enum AtHeadlineTextSize { xs, sm, md, lg, xl }

enum AtHeadlineTextAlign { left, center, right, start, end, justify }

enum AtHeadlineTextWeight { light, regular, medium, semiBold, bold, extraBold }

final Map<AtHeadlineTextSize, double> sizeOptions = {
  AtHeadlineTextSize.xs: 30.0,
  AtHeadlineTextSize.sm: 36.0,
  AtHeadlineTextSize.md: 45.0,
  AtHeadlineTextSize.lg: 57.0,
  AtHeadlineTextSize.xl: 70.0,
};

final Map<AtHeadlineTextAlign, TextAlign> alignOptions = {
  AtHeadlineTextAlign.left: TextAlign.left,
  AtHeadlineTextAlign.center: TextAlign.center,
  AtHeadlineTextAlign.right: TextAlign.right,
  AtHeadlineTextAlign.start: TextAlign.start,
  AtHeadlineTextAlign.end: TextAlign.end,
  AtHeadlineTextAlign.justify: TextAlign.justify,
};

final Map<AtHeadlineTextWeight, FontWeight> weightOptions = {
  AtHeadlineTextWeight.light: FontWeight.w300,
  AtHeadlineTextWeight.regular: FontWeight.w400,
  AtHeadlineTextWeight.medium: FontWeight.w500,
  AtHeadlineTextWeight.semiBold: FontWeight.w600,
  AtHeadlineTextWeight.bold: FontWeight.w700,
  AtHeadlineTextWeight.extraBold: FontWeight.w800,
};

class AtlasHeadlineText extends StatelessWidget {
  final String value;
  final AtHeadlineTextSize size;
  final AtHeadlineTextWeight weight;
  final AtHeadlineTextAlign? align;
  final Color? color;
  final bool? softWrap;
  final int? maxLines;

  const AtlasHeadlineText(
    this.value, {
    super.key,
    this.size = AtHeadlineTextSize.sm,
    this.weight = AtHeadlineTextWeight.medium,
    this.align = AtHeadlineTextAlign.left,
    this.color,
    this.softWrap,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    final Map<AtHeadlineTextSize, TextStyle> textStyle = {
      AtHeadlineTextSize.xs: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.headlineSmall!.color,
          ),
      AtHeadlineTextSize.sm: Theme.of(context).textTheme.headlineSmall!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.headlineSmall!.color,
          ),
      AtHeadlineTextSize.md: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.headlineMedium!.color,
          ),
      AtHeadlineTextSize.lg: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.headlineLarge!.color,
          ),
      AtHeadlineTextSize.xl: Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontSize: sizeOptions[size],
            fontWeight: weightOptions[weight],
            color: color ?? Theme.of(context).textTheme.headlineLarge!.color,
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
