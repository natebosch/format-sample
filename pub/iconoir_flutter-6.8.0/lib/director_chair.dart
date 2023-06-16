import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DirectorChair extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;

  const DirectorChair({Key? key, this.color, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) => SvgPicture.string(
        '''
<svg width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M19 12L5 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 3L5 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M19 3V12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 12L19 21" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M4 12L20 12" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"/>
<path d="M5 4L19 4" stroke="currentColor" stroke-linejoin="round"/>
<path d="M5 7L19 7" stroke="currentColor" stroke-linejoin="round"/>
</svg>
''',
        colorFilter:
            color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        width: width,
        height: height,
      );
}
