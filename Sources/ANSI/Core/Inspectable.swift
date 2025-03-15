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

public protocol Inspectable {
  func inspectList(as type: InspectType) -> [String]
}

extension Inspectable {
  public func inspect(as type: InspectType) -> String {
    inspectList(as: type).joined()
  }
}
