import 'package:elevarm_icons/elevarm_icons.dart';
import 'package:elevarm_ui/elevarm_ui.dart';
import 'package:flutter/material.dart';

/// Card for selecting file to be uploaded.
class ElevarmInputFileCard extends StatelessWidget {
  /// Callback when card is tapped. Set this to null to disable the card.
  final VoidCallback? onTap;

  /// Card's 'Click to upload' label.
  final String clickToUploadLabel;

  /// Card's ' or drag and drop' label.
  final String orDragAndDropLabel;

  /// Card's subtitle.
  final String subtitle;

  const ElevarmInputFileCard({
    super.key,
    this.onTap,
    this.clickToUploadLabel = 'Click to upload',
    this.orDragAndDropLabel = ' or drag and drop',
    this.subtitle = 'SVG, PNG, JPG or GIF (max. 800x400px)',
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ElevarmColors.white,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: ElevarmColors.neutral50),
            borderRadius:
                const BorderRadius.all(Radius.circular(ElevarmBorderRadius.md)),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          child: Column(
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ElevarmColors.neutral100,
                  border:
                      Border.all(color: ElevarmColors.neutral50, width: 8.0),
                ),
                child: const ElevarmIcon(
                  ElevarmIconsOutline.uploadCloud02,
                  color: ElevarmColors.neutral300,
                ),
              ),
              const SizedBox(height: 12.0),
              RichText(
                text: TextSpan(
                  text: clickToUploadLabel,
                  style: ElevarmFontFamilies.inter(
                    fontSize: ElevarmFontSizes.sm,
                    fontWeight: ElevarmFontWeights.semibold,
                    color: onTap != null
                        ? ElevarmColors.primary
                        : ElevarmColors.neutral100,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: orDragAndDropLabel,
                      style: ElevarmFontFamilies.inter(
                        fontSize: ElevarmFontSizes.sm,
                        fontWeight: ElevarmFontWeights.regular,
                        color: ElevarmColors.neutral400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                subtitle,
                style: ElevarmFontFamilies.inter(
                  fontSize: ElevarmFontSizes.sm,
                  fontWeight: ElevarmFontWeights.regular,
                  color: ElevarmColors.neutral400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
