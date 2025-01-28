//
//  CursorBackward.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorBackward: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorBackward, parameters: [String(n)])
    }
}
