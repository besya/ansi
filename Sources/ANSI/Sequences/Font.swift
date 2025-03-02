//
//  Font.swift
//  ANSI
//
//  Created by Ihar Biaspalau on 1.03.25.
//

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
