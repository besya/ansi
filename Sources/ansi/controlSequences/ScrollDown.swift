//
//  ScrollDown.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class ScrollDown: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.scrollDown, parameters: [String(n)])
    }
}

