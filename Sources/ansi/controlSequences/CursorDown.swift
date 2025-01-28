//
//  CursorDown.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorDown: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorDown, parameters: [String(n)])
    }
}
