
//
//  Medicine.swift
//  Medicine
//
//  Created by デジタルヘルス on 2024/11/08.
//

import Foundation

struct Medicine: Codable, Identifiable {
    let id: String //薬剤ID(QRコードの文字列)
    let name: String //薬剤名
    let purpose: String //目的
}
