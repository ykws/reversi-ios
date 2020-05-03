//
//  Cell.swift
//  Reversi
//
//  Created by KAWASHIMA Yoshiyuki on 2020/05/02.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

public enum Cell {
    case blank
    case dark
    case light
}

extension Cell: Hashable {}

extension Cell {
    /// `Disk` のすべての値を列挙した `Array` 、 `[.dark, .light]` を返します。
    public static var sides: [Cell] {
        [.dark, .light]
    }
    
    /// 自身の値を反転させた値（ `.dark` なら `.light` 、 `.light` なら `.dark` ）を返します。
    public var flipped: Cell {
        switch self {
        case .blank: return .blank
        case .dark: return .light
        case .light: return .dark
        }
    }
    
    /// 自身の値を、現在の値が `.dark` なら `.light` に、 `.light` なら `.dark` に反転させます。
    public mutating func flip() {
        self = flipped
    }
}
