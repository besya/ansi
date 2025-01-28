//
//  CursorHorizontalAbsolute.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class CursorHorizontalAbsolute: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.cursorHorizontalAbsolute, parameters: [String(n)])
    }
}
