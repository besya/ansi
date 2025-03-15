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

public enum Color {
  case named(NamedColor)
  case rgb(UInt8, UInt8, UInt8)
  case bit8(UInt8)

  public static let `default`: Color = .named(.default)

  public static let black: Color = .named(.black)
  public static let red: Color = .named(.red)
  public static let green: Color = .named(.green)
  public static let yellow: Color = .named(.yellow)
  public static let blue: Color = .named(.blue)
  public static let magenta: Color = .named(.magenta)
  public static let cyan: Color = .named(.cyan)
  public static let white: Color = .named(.white)

  public static let brightBlack: Color = .named(.brightBlack)
  public static let brightRed: Color = .named(.brightRed)
  public static let brightGreen: Color = .named(.brightGreen)
  public static let brightYellow: Color = .named(.brightYellow)
  public static let brightBlue: Color = .named(.brightBlue)
  public static let brightMagenta: Color = .named(.brightMagenta)
  public static let brightCyan: Color = .named(.brightCyan)
  public static let brightWhite: Color = .named(.brightWhite)
}

extension Color: Sendable {}

extension Color: Parameterizable {
  var parameters: Parameters {
    switch self {
    case .bit8(let color): Parameters([.digit5], .init(color))
    case .rgb(let red, let green, let blue):
      Parameters([.digit2], .init(red), .init(green), .init(blue))
    default: Parameters()
    }
  }
}

extension Color: Sequential {
  public var sequence: ANSISequence { parameters.sequence }
}
