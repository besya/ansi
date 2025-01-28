//
//  EraseInDisplay.swift
//  ansi
//
//  Created by Ihar Biaspalau on 29.01.25.
//


public class EraseInDisplay: ControlSequence {
    public init(_ n: Int = 0) {
        super.init(.eraseInDisplay, parameters: [String(n)])
    }
}
