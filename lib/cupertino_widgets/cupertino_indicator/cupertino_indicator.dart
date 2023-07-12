import '../export.dart';


class CupertinoIndicatorWidget extends StatelessWidget {
  final ProgressIndicatorProperties properties;
  final ProgressIndicatorStyle? style;
  const CupertinoIndicatorWidget({super.key, required this.properties,this.style});

  @override
  Widget build(BuildContext context) {
    return _getWidgetByIndicatorType(context);
  }

  Widget _getWidgetByIndicatorType(BuildContext context) {
    switch (properties.indicatorType) {
      case ProgressType.center:
        return Center(child: CupertinoActivityIndicator(color: style?.color,radius: properties.radius));
      case ProgressType.inStack:
        return Positioned.fill(
          child: Container(
            color: style?.inStackBackgroundColor ??  CupertinoTheme.of(context).scaffoldBackgroundColor.withOpacity(0.25),
            child: Center(
              child: CupertinoActivityIndicator(color: style?.color,radius: properties.radius),
            ),
          ),
        );
    }
  }
}
