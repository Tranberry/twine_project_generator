import 'package:dcli/dcli.dart';

void main() {
  var selected = menu(
      prompt: 'Select your poison',
      options: ['beer', 'wine', 'spirits'],
      defaultOption: 'beer');
  print(green('You choice was: $selected'));

  print(selected);
}
