// Copyright (c) 2014, Google Inc. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

library stagehand.shelfapp;

import '../stagehand.dart';
import '../src/common.dart';
import 'shelfapp_data.dart';

/**
 * A generator for a hello world command-line application.
 */
class ShelfAppGenerator extends DefaultGenerator {
  ShelfAppGenerator() : super(
      'shelfapp',
      "A minimal web server using the shelf package.",
      categories: const ['dart', 'shelf', 'web server', 'minimal']) {

    for (TemplateFile file in decodeConcanenatedData(data)) {
      addTemplateFile(file);
    }

    setEntrypoint(getFile('bin/server.dart'));
  }
}
