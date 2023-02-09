/* This is free and unencumbered software released into the public domain. */

import '../graphics/pointf.dart' show PointF;

/// A [Face] contains all the information identifying the location of a face in
/// a bitmap.
///
/// See: https://developer.android.com/reference/android/media/FaceDetector.Face
class Face {
  /// The minimum confidence factor of good face recognition.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#CONFIDENCE_THRESHOLD
  static const double CONFIDENCE_THRESHOLD = 0.4;

  /// The X-axis Euler angle of a face.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#EULER_X
  static const int EULER_X = 0;

  /// The Y-axis Euler angle of a face.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#EULER_Y
  static const int EULER_Y = 1;

  /// The Z-axis Euler angle of a face.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#EULER_Z
  static const int EULER_Z = 2;

  /// A confidence factor between 0 and 1.
  ///
  /// This indicates how certain what has been found is actually a face.
  /// A confidence factor above 0.3 is usually good enough.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#confidence()
  final double confidence;

  /// The distance between the eyes.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#eyesDistance()
  final double eyesDistance;

  /// The position of the mid-point between the eyes.
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#getMidPoint(android.graphics.PointF)
  final PointF midPoint;

  /// The Euler angle of the face, around the X axis.
  final double poseX;

  /// The Euler angle of the face, around the Y axis.
  final double poseY;

  /// The Euler angle of the face, around the Z axis.
  final double poseZ;

  Face({
    required this.confidence,
    required this.eyesDistance,
    required this.midPoint,
    required this.poseX,
    required this.poseY,
    required this.poseZ,
  });

  /// Returns the face's pose. That is, the rotations around either the X, Y or
  /// Z axis (the positions in 3-dimensional Euclidean space).
  ///
  /// See: https://developer.android.com/reference/android/media/FaceDetector.Face#pose(int)
  double? pose(final int euler) {
    switch (euler) {
      case EULER_X:
        return poseX;
      case EULER_Y:
        return poseY;
      case EULER_Z:
        return poseZ;
      default:
        assert(false, "unreachable");
        return null; // unreachable
    }
  }
}
