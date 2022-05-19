//
//  OrderListView.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 04/05/22.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject var orders : OrderList = OrderList()
    @ObservedObject var totals : TotalList
    @ObservedObject var bahans : BahanList
    
    var body: some View {
        NavigationView {
            List(orders.orderList, id: \.id) { order in
                HStack {
                    VStack (alignment: .leading, spacing: 3) {
                        Text(order.buyerName)
                            .fontWeight(.bold)
                            .font(.title2)
                            .foregroundColor(.primary)
                        Text("\(String(format: "%.f", order.totalSnack)) Toples")
                            .fontWeight(.bold)
                            .font(.subheadline)
                            .foregroundColor(.primary)
//                        Text("\(String(format: "%.f", order.totalPrice))")
//                            .fontWeight(.bold)
//                            .font(.subheadline)
//                            .foregroundColor(.black)
                        
                        
                        Text("Rp \(rupiahCurrency(totalPrice: order.totalPrice)),00")
                            .fontWeight(.medium)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        print("List ")
                    } label: {
                        Image(systemName: "chevron.right").foregroundColor(.black)
                    }
                }
            }
                .navigationTitle("Pesanan")
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        NavigationLink(destination: AddOrderView(orders: orders, totals: totals, bahans: bahans), label: {
                            Label("Save", systemImage: "plus.circle.fill")
                        })
                    }
                }
                .background(.clear)
        }
    }
    
    func rupiahCurrency(totalPrice : Double) -> String{
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "id_ID")
        formatter.groupingSeparator = "."
        formatter.numberStyle = .decimal
        let formattedPrice = formatter.string(from: totalPrice as NSNumber)
        
        return formattedPrice ?? ""
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView(totals: TotalList(), bahans: BahanList())
    }
}
