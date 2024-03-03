import 'package:flutter/material.dart';

class ImageCardContent extends StatelessWidget {
  const ImageCardContent({
    Key? key,
    this.contentPadding,
    this.tags,
    this.title,
    this.description,
    this.footer,
    this.tagSpacing,
    this.tagRunSpacing,
    required this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry? contentPadding;
  final List<Widget>? tags;
  final double? tagSpacing;
  final double? tagRunSpacing;

  final Widget? title;
  final Widget? description;
  final Widget? footer;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: contentPadding ??
          const EdgeInsets.only(top: 8, bottom: 12, left: 8, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (tags != null)
            Wrap(
              spacing: tagSpacing ?? 10,
              runSpacing: tagRunSpacing ?? 10,
              children: tags!,
            ),
          if (title != null || description != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null) title!,
                  if (title != null && description != null)
                    const SizedBox(
                      height: 2,
                    ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 75,
                      ),
                      InkWell(
                          onTap: onTap,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18),
                            child: Container(
                                width: 50,
                                height: 20.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.blue.shade900),
                                child: Center(
                                    child: Text('Buy',
                                        style: TextStyle(
                                            fontSize: 10.0,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.blue.shade50)))),
                          ))
                    ],
                  )
                ],
              ),
            ),
          if (footer != null)
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: footer!,
            ),
        ],
      ),
    );
  }
}
