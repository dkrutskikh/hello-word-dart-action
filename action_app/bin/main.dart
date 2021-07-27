import 'dart:io';

import 'package:github_actions_toolkit/github_actions_toolkit.dart';

void main(List<String> arguments) async {
  try {
    // `name` input defined in `action.yml` file
    final name = Input('name', isRequired: true, canBeEmpty: false);

    log.info('Hello ${name.value} 👋!');
  } catch (error) {
    log.error(error.toString());
    exitCode = 1;
  }
}
