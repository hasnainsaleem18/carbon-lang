// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// NOAUTOUPDATE

package ExplorerTest api;

class Point(T:! type) {
  var x: T;
  var y: T;
}

fn FirstOfTwoPoints[T:! type](a: Point(T), b: Point(T)) -> Point(T) {
  return a;
}

fn Main() -> i32 {
  var p: Point(i32) = {.x = 0, .y = 1};
  var q: Point(bool) = {.x = true, .y = false};
  // CHECK:STDERR: COMPILATION ERROR: fail_argument_deduction.carbon:[[@LINE+3]]: deduced multiple different values for T:! type:
  // CHECK:STDERR:   i32
  // CHECK:STDERR:   bool
  return FirstOfTwoPoints(p, q).x;
}
