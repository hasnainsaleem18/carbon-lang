// Part of the Carbon Language project, under the Apache License v2.0 with LLVM
// Exceptions. See /LICENSE for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// NOAUTOUPDATE

package ExplorerTest api;


base class A {
    virtual destructor[self: Self]{}
}

class B {
  extend base: A;
  // CHECK:STDERR: COMPILATION ERROR: fail_override_virtual_virtual.carbon:[[@LINE+1]]: Error declaring destructor for `B`: use `impl` to implement virtual destructor in child class.
  virtual destructor[self: Self]{}
}

fn Main() -> i32 {
  return 0;
}
