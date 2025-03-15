//===----------------------------------------------------------------------===//
//
// This source file is part of the ANSI open source project
//
// Copyright (c) 2025 Ihar Biaspalau
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.md for the list of ANSI project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

import ANSI
import ASCII
import Testing

@Test
func oneParameter() {
  #expect(Parameters(4).sequence == [.digit4])
}

@Test
func multipleParameters() {
  #expect(
    Parameters(1, 2, 3).sequence == [
      .digit1, .semicolon, .digit2, .semicolon, .digit3,
    ])
}
