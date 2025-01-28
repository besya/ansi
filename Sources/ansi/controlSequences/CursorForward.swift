//
//  CursorForward.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorForward: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorForward, parameters: [String(n)])
    }
}
