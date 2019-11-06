# Horizontalcancelablechipgroup

Horizontalcancelablechipgroup is a flutter library which creates horizontal list of chips with delete button and heavy customization.

## Installation

Use the package manager [pub](https://pub.dev) to install Horizontalcancelablechipgroup.

```bash
dependencies:
  horizontalcancelablechipgroup: ^1.0.3
```
```bash
Install it
  flutter pub get
```

## Usage

```dart
import 'package:horizontalcancelablechipgroup/horizontalcancelablechipgroup.dart';

 HorizontalCancelableChipGroup(
              animationDuration: 250,
              backgroundColor: Colors.orange,
              labelTextColor: Colors.black,
              borderColor: Colors.green,
              deleteIcon: Icon(Icons.cancel),
              availableItems: (value){
                print(value);
              },
              labelTextFontSize: 14,
              dividerPadding: 5,
              items: ['firoz','rubayet','nadia','suriya','rakib','mamun'],
            ),
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)