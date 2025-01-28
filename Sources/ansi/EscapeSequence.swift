//
//  EscapeSequence.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

import Foundation

public class EscapeSequence: Sequence {
    public init(_ type: EscapeSequenceType, parameters: [String]) {
        super.init(parameters: [
            ASCII.escape.string,
            type.string
        ] + parameters)
    }
}
