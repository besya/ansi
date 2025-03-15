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

public enum Font {
  case `default`
  case alternative1
  case alternative2
  case alternative3
  case alternative4
  case alternative5
  case alternative6
  case alternative7
  case alternative8
  case alternative9
  case gothic
}

extension Font: Sequential {
  public var sequence: ANSISequence {
    switch self {
    case .default: 10
    case .alternative1: 11
    case .alternative2: 12
    case .alternative3: 13
    case .alternative4: 14
    case .alternative5: 15
    case .alternative6: 16
    case .alternative7: 17
    case .alternative8: 18
    case .alternative9: 19
    case .gothic: 20
    }
  }
}

extension Font: Sendable {}
