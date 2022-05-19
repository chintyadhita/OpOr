//
//  ContentView.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 28/04/22.
//

import SwiftUI

struct OpOrView: View {
    
    @StateObject var totals : TotalList = TotalList()
    @StateObject var bahans : BahanList = BahanList()
    
    var body: some View {
            TabView{
                OrderView(totals: totals, bahans: bahans)
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Pesanan")
                    }
                CartView(bahans: bahans, totals: totals)
                    .tabItem {
                        Image(systemName: "cart")
                        Text("Belanja")
                    }
            }.accentColor(.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OpOrView()
    }
}
