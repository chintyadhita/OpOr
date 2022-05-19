//
//  ResepNastarView.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 17/05/22.
//

import SwiftUI

struct ResepNastarView: View {
    
    @ObservedObject var bahans : BahanList
    
    var body: some View {
        NavigationView {
            List {
                    Group {
                        DisplayBahan(bahan: "Margarin", jumlah: bahans.bahanList[2].margarin, satuan: "gr")
                            .padding([.trailing, .leading])
                        DisplayBahan(bahan: "Mentega", jumlah: bahans.bahanList[2].mentega, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Gula Halus", jumlah: bahans.bahanList[2].gula_halus, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Telur Utuh", jumlah: bahans.bahanList[2].telur_utuh, satuan: "Butir").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Susu Bubuk", jumlah: bahans.bahanList[2].susu_bubuk, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Tepung Terigu", jumlah: bahans.bahanList[2].tepung_terigu, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Selai Nanas", jumlah: bahans.bahanList[2].selai_nanas, satuan: "gr").padding([.trailing, .leading])

                    }
                    Group {
                        DisplayBahan(bahan: "Kuning Telur", jumlah: bahans.bahanList[2].kuning_telur, satuan: "Butir").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Maizena", jumlah: bahans.bahanList[2].maizena, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Keju Gouda", jumlah: bahans.bahanList[2].keju_gouda, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Keju Cheddar", jumlah: bahans.bahanList[2].keju_cheddar, satuan: "gr").padding([.trailing, .leading])
                    }
            }
            .navigationTitle("Resep Nastar")
        }
    }
    
    struct DisplayBahan: View {
        let bahan: String
        let jumlah: Double
        let satuan: String
        
        var body: some View {
            HStack {
                Text(bahan)
//                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
//                    .foregroundColor(.white)
//                    .padding([.leading])
                Text("\(String(format: "%.f", jumlah))")
//                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    .foregroundColor(.white)
//                    .padding([.trailing])
                Text(satuan)
//                    .font(.headline)
//                    .frame(alignment: .trailing)
//                    .foregroundColor(.white)
//                    .padding([.trailing])
            }
        }
    }

}

struct ResepNastarView_Previews: PreviewProvider {
    static var previews: some View {
        ResepNastarView(bahans: BahanList())
    }
}
