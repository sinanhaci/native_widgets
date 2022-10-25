import 'button_properties_model.dart';

class ActionSheetModel {
  String? title;
  String? content;
  ButtonProperties? defaultButtonProperties;
  List<ButtonProperties> actions;
  ActionSheetModel({
    this.title,
    this.content,
    required this.actions,
    this.defaultButtonProperties,
  });
}
