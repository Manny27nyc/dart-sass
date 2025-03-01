// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:meta/meta.dart';
import 'package:source_span/source_span.dart';

import '../../../value.dart';
import '../../../visitor/interface/expression.dart';
import '../expression.dart';

/// A color literal.
///
/// {@category AST}
@sealed
class ColorExpression implements Expression {
  /// The value of this color.
  final SassColor value;

  final FileSpan span;

  ColorExpression(this.value) : span = value.originalSpan!;

  T accept<T>(ExpressionVisitor<T> visitor) =>
      visitor.visitColorExpression(this);

  String toString() => value.toString();
}
