# Horizontalcancelablechipgroup

Horizontalcancelablechipgroup is a flutter library which creates horizontal list of chips with delete button and heavy customization.

## Installation

Use the package manager [pub](https://pub.dev) to install Horizontalcancelablechipgroup.

```bash
dependencies:
  horizontalcancelablechipgroup: ^1.0.0
```
```bash
Install it
  flutter pub get
```

## Usage

```dart
import 'package:horizontalcancelablechipgroup/horizontalcancelablechipgroup.dart';

MultiSelectChipGroup(
              items: [
                'Hello',
                'Firoz',
                'Evan',
                'Nadia',
                'iafgdiafgsuiayfgayifgiafg'
              ],
              preSelectedItems: [
                'Evan',
                'Nadia',
              ],
              onSelectionChanged: (values) {
                print(values);
              },
              horizontalChipSpacing: 10,
              selectedColor: Colors.green,
              disabledColor: Colors.white,
              leftCommonIcon: Icons.perm_identity,
              leftIcons: [
                Icons.alarm,
                Icons.ac_unit,
                Icons.accessibility,
                Icons.account_balance,
                Icons.perm_identity,
              ],
            ),
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)