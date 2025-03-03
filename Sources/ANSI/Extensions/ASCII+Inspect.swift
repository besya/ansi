//
//  ASCII+Inspect.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

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
