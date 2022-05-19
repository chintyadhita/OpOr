//
//  ResepKastengelView.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 17/05/22.
//

import SwiftUI

struct ResepKastengelView: View {
    
    @ObservedObject var bahans : BahanList
    
    var body: some View {
        NavigationView {
            List {
                    Group {
                        DisplayBahan(bahan: "Margarin", jumlah: bahans.bahanList[3].margarin, satuan: "gr")
                            .padding([.trailing, .leading])
                        DisplayBahan(bahan: "Mentega", jumlah: bahans.bahanList[3].mentega, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Gula Halus", jumlah: bahans.bahanList[3].gula_halus, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Telur Utuh", jumlah: bahans.bahanList[3].telur_utuh, satuan: "Butir").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Susu Bubuk", jumlah: bahans.bahanList[3].susu_bubuk, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Tepung Terigu", jumlah: bahans.bahanList[3].tepung_terigu, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Selai Nanas", jumlah: bahans.bahanList[3].selai_nanas, satuan: "gr").padding([.trailing, .leading])

                    }
                    Group {
                        DisplayBahan(bahan: "Kuning Telur", jumlah: bahans.bahanList[3].kuning_telur, satuan: "Butir").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Maizena", jumlah: bahans.bahanList[3].maizena, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Keju Gouda", jumlah: bahans.bahanList[3].keju_gouda, satuan: "gr").padding([.trailing, .leading])
                        DisplayBahan(bahan: "Keju Cheddar", jumlah: bahans.bahanList[3].keju_cheddar, satuan: "gr").padding([.trailing, .leading])
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

struct ResepKastengelView_Previews: PreviewProvider {
    static var previews: some View {
        ResepKastengelView(bahans: BahanList())
    }
}
