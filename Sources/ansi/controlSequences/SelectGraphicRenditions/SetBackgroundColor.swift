//
//  SetBackgroundColor.swift
//  ansi
//
//  Created by Ihar Biaspalau on 28.01.25.
//


public class SetBackgroundColor: SelectGraphicRendition {
    public init(_ color: Color) { super.init(.setBackgroundColor, parameters: color.parameterize) }
    public convenience init(_ r: Int, _ g: Int, _ b: Int) { self.init(.rgb(r, g, b)) }
    public convenience init(_ n: Int) { self.init(.bit8(n)) }
}
