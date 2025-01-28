//
//  CursorPreviousLine.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorPreviousLine: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorPreviousLine, parameters: [String(n)])
    }
}
