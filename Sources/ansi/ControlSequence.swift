//
//  ControlSequence.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//

public class ControlSequence: EscapeSequence {
    public init(_ type: ControlSequenceType, parameters: [String]) {
        super.init(.controlSequenceIntroducer, parameters: parameters + [type.rawValue])
    }
}
