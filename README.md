
# Flutter Native Widgets
## Adaptive Cupertino and Material widgets.

<br>
<br>


### STARTED 
```dart
final NativeWidgets nativeWidgets = NativeWidgets(context);
```

<br>
<br>

Adaptive Refresh Indicator

<img src="https://user-images.githubusercontent.com/77547319/197977014-4fb97eaf-2c59-4026-afd6-40b30d815bc0.gif" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197977105-b24f0866-f4a3-4964-8334-615a36105ca2.gif" width="250"> 
<br>
<br>
```dart
nativeWidgets.nativeRefreshIndicator(
  constructors: RefreshIndicatorModel(
    onRefresh: ()async{
      await Future.delayed(const Duration(seconds: 2));
    },
    children: [
        //Scroll Items
    ],
  ),
)
-----or-----
nativeWidgets.nativeRefreshIndicator(
  constructors: RefreshIndicatorModel(
    onRefresh: ()async{
      await Future.delayed(const Duration(seconds: 2));
    },
    itemBuilder: (context,index){
      return ListTile(title: Text('$index'),);
    }
  ),
)
```
<br>
<br>

Adaptive Ok Dialog

<img src="https://user-images.githubusercontent.com/77547319/197972795-c66fea1f-87f7-45d0-8568-b47b098bdd9d.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197973824-efbde47a-6f21-4695-a580-e70911d6ace8.png" width="250"> 
<br>
<br>
```dart
_button(
  title: 'Ok Dialog',
  onTap: () {
    nativeWidgets.nativeDialog(
      constructors: DialogModel(
        dialogType: DialogType.ok,
        title: 'Title',
        content: 'Content',
        okButtonProperties: ButtonProperties(
          buttonText: 'OK',
          onPress: () => Navigator.pop(context),
          isDefaultAction: true
        ),
      ),
    );
  },
),
```
<br>
<br>

Adaptive Ok Cancel Dialog

<img src="https://user-images.githubusercontent.com/77547319/197974129-cbfd509b-cf0b-44a8-a13f-ca8269f8b44a.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197974020-f02a4696-45d2-442d-81e9-9d7c5ccb0e08.png" width="250"> 
<br>
<br>
```dart
_button(
  title: 'Ok Cancel Dialog',
  onTap: () {
    nativeWidgets.nativeDialog(
      constructors: DialogModel(
        dialogType: DialogType.okCancel,
        title: 'Title',
        content: 'Content',
        okButtonProperties: ButtonProperties(
          buttonText: 'Cancel',
          onPress: () => Navigator.pop(context),
          isDestructiveAction: true
        ),
        cancelButtonProperties: ButtonProperties(
          buttonText: 'Ok',
          onPress: () => Navigator.pop(context),
          isDefaultAction: true
        ),
      ),
    );
  },
),
```
<br>
<br>

Adaptive Ok Input Dialog

<img src="https://user-images.githubusercontent.com/77547319/197974253-2c059818-27ce-4d28-85cc-f6ab40433859.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197974324-4173ce19-a7f3-46eb-8d25-fca575ebf246.png" width="250"> 
<br>
<br>
```dart
_button(
  title: 'Ok Input Dialog',
  onTap: () {
    nativeWidgets.nativeDialog(
      constructors: DialogModel(
        dialogType: DialogType.inputOk,
        title: 'Title',
        content: 'Content',
        okButtonProperties: ButtonProperties(
          buttonText: 'OK',
          onPress: () => Navigator.pop(context),
          isDefaultAction: true
        ),
        cancelButtonProperties: ButtonProperties(
          buttonText: 'Ok',
          onPress: () => Navigator.pop(context),
          isDefaultAction: true
        ),
        inputProperties: DialogInputProperties(
          onChanged: (value){}
          //controller,focusNode...
        )
      ),
    );
  },
),
```
<br>
<br>

Adaptive Ok Cancel Input Dialog

<img src="https://user-images.githubusercontent.com/77547319/197974478-19bfe6c6-c1a7-4eb3-a8cf-78c099bf0a6f.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197974419-78723ab8-608a-40d2-b87c-6a9358f2ee97.png" width="250"> 
<br>
<br>
```dart
_button(
  title: 'Ok Input Dialog',
  onTap: () {
    nativeWidgets.nativeDialog(
      constructors: DialogModel(
        dialogType: DialogType.inputOk,
        title: 'Title',
        content: 'Content',
        okButtonProperties: ButtonProperties(
          buttonText: 'OK',
          onPress: () => Navigator.pop(context),
          isDefaultAction: true
        ),
        inputProperties: DialogInputProperties(
          onChanged: (value){}
          //controller,focusNode...
        )
      ),
    );
  },
),
```
<br>
<br>

Adaptive Date Time Picker

<img src="https://user-images.githubusercontent.com/77547319/197974715-e0041235-3d49-4f0a-89c4-13a649bfdc53.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197974826-0c370915-0822-4ddf-ba77-79bec74a08e3.png" width="250"> 

<img src="https://user-images.githubusercontent.com/77547319/197975030-baf1a50f-6d3e-4f4c-9393-a932cde82c6c.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197974963-cdf6f1a5-4739-4a98-adb4-c327dd83d060.png" width="250"> 
<br>
<br>
```dart
_button(
   title: 'Date Time Picker',
   onTap: () {
     nativeWidgets.nativeDateTimePicker(
       constructors: DateTimePickerModel(
         pickerType: DateTimePickerType.dateAndTime,
         //DateTimePickerType.dateAndTime,DateTimePickerType.date,DateTimePickerType.time
         time: DateTime.now()
       ),
     );
   },
 ),
```
<br>
<br>


Adaptive Action Sheet

<img src="https://user-images.githubusercontent.com/77547319/197976085-c0d74584-87f1-4886-aa5c-2c5b88d0cf13.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197976199-d552febd-8b49-4fa8-9893-fba277eea0a3.png" width="250"> 

<img src="https://user-images.githubusercontent.com/77547319/197976099-8276d0c7-5d3d-43ee-acab-9b0c1fee970c.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197976207-fecb64ee-fb93-4eb7-a052-812f7fc5c001.png" width="250"> 
<br>
<br>
```dart
_button(
   title: 'Action Sheet Title and Content',
   onTap: () {
     nativeWidgets.nativeActionSheet(
       constructors: ActionSheetModel(
         title: 'Title',
         content: 'Content',
         actions: [
           ButtonProperties(
             buttonText: 'First Action',
             onPress: (){},
             icon: Icons.add
           ),
           ButtonProperties(
             buttonText: 'Second Action',
             onPress: (){},
             icon: Icons.add
           ),
         ]
       ),
     );
   },
 ),
```
<br>
<br>

Adaptive Switch and Progress Indicator

<img src="https://user-images.githubusercontent.com/77547319/197976496-b7009064-3db1-4d93-99d0-03ed3258bb8f.png" width="250"> <img src="https://user-images.githubusercontent.com/77547319/197976415-afea7ce6-a585-42bf-9882-3bf496fb9e86.png" width="250"> 
<br>
<br>
```dart
nativeWidgets.nativeSwitch(
  constructors: SwitchModel(
    activeColor: Colors.blue,
    value: true,
    onChanged: (value){}
  )
),
nativeWidgets.nativeIndicator(
  constructors: IndicatorModel()
),
```
<br>
<br>



