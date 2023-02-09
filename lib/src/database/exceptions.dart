/* This is free and unencumbered software released into the public domain. */

import 'package:flutter/services.dart' show PlatformException;

/// An exception indicating that a cursor is out of bounds.
///
/// See: https://developer.android.com/reference/android/database/CursorIndexOutOfBoundsException
class CursorIndexOutOfBoundsException extends PlatformException {
  final int index;

  final int size;

  CursorIndexOutOfBoundsException(this.index, this.size)
      : super(code: 'CursorIndexOutOfBoundsException');
}

/// An exception that indicates there was an error with SQL parsing or
/// execution.
///
/// See: https://developer.android.com/reference/android/database/SQLException
class SQLException extends PlatformException {
  SQLException({required String code}) : super(code: code);
}
