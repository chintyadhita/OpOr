//
//  Total.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 13/05/22.
//

import SwiftUI

struct Total {
    var totalName: String
    var total : Double
}

class TotalList : ObservableObject {
    @Published var totalList = [
        Total(totalName: "Nastar", total: 0),
        Total(totalName: "Kastengel", total: 0),
        Total(totalName: "All", total: 0)
    ]
}
