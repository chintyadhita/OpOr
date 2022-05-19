//
//  Order.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 04/05/22.
//

import SwiftUI

struct Order : Identifiable {
    var id = UUID()
    var buyerName: String
    var buyerAddress: String
    var totalNastar: Double
    var totalKastengel: Double
    var totalSnack: Double
    var totalPrice: Double
}

class OrderList : ObservableObject {
    
    @Published var orderList = [
        Order(buyerName: "Dita", buyerAddress: "Jln KRI Fatahillah", totalNastar: 5, totalKastengel: 3, totalSnack: 8, totalPrice: 610000),
        Order(buyerName: "Cyntya", buyerAddress: "Jln KRI Fatahillah 20", totalNastar: 1, totalKastengel: 1, totalSnack: 2, totalPrice: 130000)
    ]
}
