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

import ASCII

extension ASCII {
  public func inspect(_ type: InspectType) -> String {
    switch type {
    case .name: String(describing: self)
    case .binary: String(describing: self.binary)
    case .controlDescription: String(describing: self.controlDescription)
    case .decimal: String(describing: self.decimal)
    case .escaped: String(describing: self.escaped)
    case .hexadecimal: String(describing: self.hexadecimal)
    case .htmlEntity: String(describing: self.htmlEntity)
    case .int: String(describing: self.int)
    case .octal: String(describing: self.octal)
    case .unicode: String(describing: self.unicode)
    }
  }
}
