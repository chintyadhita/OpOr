//
//  AddOrder.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 03/05/22.
//

import SwiftUI

struct AddOrderView: View {

    @State private var name = ""
    @State private var alamat = ""
    @State private var tglOrder = ""
    @State private var numberOfNastar = 0
    @State private var numberOfKastengel = 0
    
    @ObservedObject var orders : OrderList
    @ObservedObject var totals : TotalList
    @ObservedObject var bahans : BahanList
    
    @Environment(\.presentationMode) var presentationMode : Binding<PresentationMode>
        
    var body: some View {
        Form {
            Section(header:
                        Text("Tambah Pesanan")
                            .font(.headline)
                            .foregroundColor(.black)) {
                TextField("Nama", text: $name)
                TextField("Alamat", text: $alamat)
//                TextField("Tanggal", text: $tglOrder)
//                DatePicker("Tanggal Order", selection: $tglOrder, displayedComponents: .date)
            }
            Section(header: Text("Daftar Kue")) {
                Stepper("Nastar", value: $numberOfNastar, in: 1...100)
                Text("\(numberOfNastar) Toples")
                Stepper("Kastengel", value: $numberOfKastengel, in: 1...100)
                Text("\(numberOfKastengel) Toples")
            }
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarTrailing) {
                Button("Simpan", action: {
                    saveOrder()
                    
                    self.presentationMode.wrappedValue.dismiss()
                })
            }
        }
    }
    
    func saveOrder() {
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty else {
            return
        }
        
        let totalSnack = numberOfNastar + numberOfKastengel
        let totalPrice = (numberOfNastar*60000) + (numberOfKastengel*70000)
        
        let newOrder = Order(buyerName: name, buyerAddress: alamat, totalNastar: Double(numberOfNastar), totalKastengel: Double(numberOfKastengel), totalSnack: Double(totalSnack), totalPrice: Double(totalPrice))
        
        orders.orderList.append(newOrder)
        
        var totalNastar = 0.0
        var totalKastengel = 0.0
        
        for nastar in orders.orderList {
            totalNastar += nastar.totalNastar
        }
        
        for kastengel in orders.orderList {
            totalKastengel += kastengel.totalKastengel
        }
        
        totals.totalList[0].total = totalNastar
        totals.totalList[1].total = totalKastengel
        
        let totalResepNastar = totals.totalList[0].total / 5
        
        let roundedUpTotalResepNastar = ceil(totalResepNastar)
        
        print(roundedUpTotalResepNastar)
        
        let totalResepKastengel = totals.totalList[1].total / 5
        
        let roundedUpTotalResepKastengel = ceil(totalResepKastengel)
        
        print(roundedUpTotalResepKastengel	)
        
        bahans.bahanList[2].margarin = bahans.bahanList[0].margarin * roundedUpTotalResepNastar
        bahans.bahanList[2].mentega = bahans.bahanList[0].mentega * roundedUpTotalResepNastar
        bahans.bahanList[2].gula_halus = bahans.bahanList[0].gula_halus * roundedUpTotalResepNastar
        bahans.bahanList[2].telur_utuh = bahans.bahanList[0].telur_utuh * roundedUpTotalResepNastar
        bahans.bahanList[2].susu_bubuk = bahans.bahanList[0].susu_bubuk * roundedUpTotalResepNastar
        bahans.bahanList[2].tepung_terigu = bahans.bahanList[0].tepung_terigu * roundedUpTotalResepNastar
        bahans.bahanList[2].selai_nanas = bahans.bahanList[0].selai_nanas * roundedUpTotalResepNastar
        bahans.bahanList[2].kuning_telur = bahans.bahanList[0].kuning_telur * roundedUpTotalResepNastar
        bahans.bahanList[2].maizena = bahans.bahanList[0].maizena * roundedUpTotalResepNastar
        bahans.bahanList[2].keju_gouda = bahans.bahanList[0].keju_gouda * roundedUpTotalResepNastar
        bahans.bahanList[2].keju_cheddar = bahans.bahanList[0].keju_cheddar * roundedUpTotalResepNastar
        
        print(bahans.bahanList[2].margarin)
        
        bahans.bahanList[3].margarin = bahans.bahanList[1].margarin * roundedUpTotalResepKastengel
        bahans.bahanList[3].mentega = bahans.bahanList[1].mentega * roundedUpTotalResepKastengel
        bahans.bahanList[3].gula_halus = bahans.bahanList[1].gula_halus * roundedUpTotalResepKastengel
        bahans.bahanList[3].telur_utuh = bahans.bahanList[1].telur_utuh * roundedUpTotalResepKastengel
        bahans.bahanList[3].susu_bubuk = bahans.bahanList[1].susu_bubuk * roundedUpTotalResepKastengel
        bahans.bahanList[3].tepung_terigu = bahans.bahanList[1].tepung_terigu * roundedUpTotalResepKastengel
        bahans.bahanList[3].selai_nanas = bahans.bahanList[1].selai_nanas * roundedUpTotalResepKastengel
        bahans.bahanList[3].kuning_telur = bahans.bahanList[1].kuning_telur * roundedUpTotalResepKastengel
        bahans.bahanList[3].maizena = bahans.bahanList[1].maizena * roundedUpTotalResepKastengel
        bahans.bahanList[3].keju_gouda = bahans.bahanList[1].keju_gouda * roundedUpTotalResepKastengel
        bahans.bahanList[3].keju_cheddar = bahans.bahanList[1].keju_cheddar * roundedUpTotalResepKastengel
        
        print(bahans.bahanList[3].margarin)
        
        bahans.bahanList[4].margarin = bahans.bahanList[3].margarin + bahans.bahanList[2].margarin
        bahans.bahanList[4].mentega = bahans.bahanList[3].mentega + bahans.bahanList[2].mentega
        bahans.bahanList[4].gula_halus = bahans.bahanList[3].gula_halus + bahans.bahanList[2].gula_halus
        bahans.bahanList[4].telur_utuh = bahans.bahanList[3].telur_utuh + bahans.bahanList[2].telur_utuh
        bahans.bahanList[4].susu_bubuk = bahans.bahanList[3].susu_bubuk + bahans.bahanList[2].susu_bubuk
        bahans.bahanList[4].tepung_terigu = bahans.bahanList[3].tepung_terigu + bahans.bahanList[2].tepung_terigu
        bahans.bahanList[4].selai_nanas = bahans.bahanList[3].selai_nanas + bahans.bahanList[2].selai_nanas
        bahans.bahanList[4].kuning_telur = bahans.bahanList[3].kuning_telur + bahans.bahanList[2].kuning_telur
        bahans.bahanList[4].maizena = bahans.bahanList[3].maizena + bahans.bahanList[2].maizena
        bahans.bahanList[4].keju_gouda = bahans.bahanList[3].keju_gouda + bahans.bahanList[2].keju_gouda
        bahans.bahanList[4].keju_cheddar = bahans.bahanList[3].keju_cheddar + bahans.bahanList[2].keju_cheddar
        
        print(bahans.bahanList[4].margarin)
        
    }
}

struct AddOrder_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView(orders: OrderList(), totals: TotalList(), bahans: BahanList())
    }
}
