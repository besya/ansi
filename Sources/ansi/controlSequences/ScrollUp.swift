//
//  ScrollUp.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class ScrollUp: ControlSequence {
    public init(_ n: Int = 1) {
        super.init(.scrollUp, parameters: [String(n)])
    }
}
