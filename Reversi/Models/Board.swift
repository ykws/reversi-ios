//
//  Board.swift
//  Reversi
//
//  Created by KAWASHIMA Yoshiyuki on 2020/05/02.
//  Copyright © 2020 Yuta Koshizawa. All rights reserved.
//

/// 盤の状態を管理します
struct Board {
    let size: Int = 8
    
    //  TODO: 必要な状態管理は nil, Disk.dark or Disk.light
    //  -> 空白を nil ではなく .blank で扱うために Cell として一旦管理
    var raw: [Cell] = []
    
    //  TODO: 裏返しした状態管理
    //  裏返しのアニメーション用に raw の状態は遅延更新します。
    //  置いた場所を中心に raw と next の差分でアニメーションさせて裏返し、
    //  raw の状態を更新する tick みたいな時限処理ができると良さそう。
    var next: [Cell] = []
    
    /// マスの状態を取得します。
    /// - Parameter row: 行
    /// - Parameter column: 列
    /// - Returns: 石が置かれていない場合は nil を返します。
    func get(AtRow row: Int, AtColumn column: Int) -> Cell? {
        return raw[row + column * size]
    }

    /// 盤に石を置きます
    /// 
    /// - Parameter disk: 盤に置く石の色を渡します。
    /// - Parameter row: 行
    /// - Parameter column: 列
    mutating func put(_ disk: Cell, AtRow row: Int, AtColumn column: Int) {
        raw[row + column * size] = disk
    }
    
    /// 盤の状態を初期化します。
    mutating func initialize() {
        raw = Array(repeating: .blank, count: size * size)

        put(.light, AtRow: 3, AtColumn: 3)
        put(.dark, AtRow: 4, AtColumn: 3)
        put(.dark, AtRow: 3, AtColumn: 4)
        put(.light, AtRow: 4, AtColumn: 4)
    }
}
