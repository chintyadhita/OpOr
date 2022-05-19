//
//  CartView.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 11/05/22.
//

import SwiftUI

struct CartView: View {
    
    @ObservedObject var bahans : BahanList
    @ObservedObject var totals : TotalList
    
    var body: some View {
        NavigationView {
//            ScrollView {
                VStack {
                    HStack {
                        NavigationLink(destination: ResepNastarView(bahans: bahans), label: {
                            ZStack {
                                Rectangle()
                                    .cornerRadius(8)
                                    .frame(width: 166, height: 83, alignment: .center)
                                    .foregroundColor(.orange)
                                    .opacity(0.9)
                                VStack{
                                    Text("\(String(format: "%.f", totals.totalList[0].total))")
                                        .font(.title)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding([.leading,])
                                        .foregroundColor(.white)
                                    Text("Nastar")
                                        .font(.headline)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding([.leading])
                                        .foregroundColor(.white)
                                }
                            }

                        })
                        NavigationLink(destination: ResepKastengelView(bahans: bahans), label: {
                            ZStack {
                                Rectangle()
                                    .cornerRadius(8)
                                    .frame(width: 166, height: 83, alignment: .center)
                                    .foregroundColor(.orange)
                                    .opacity(0.9)
                                VStack{
                                    Text("\(String(format: "%.f", totals.totalList[1].total))")
                                        .font(.title)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding([.leading,])
                                        .foregroundColor(.white)
                                    Text("Kastengel")
                                        .font(.headline)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding([.leading])
                                        .foregroundColor(.white)
                                }
                            }
                        })
                    }.padding()
                    VStack {
                        List {
                            Section("Total Bahan") {
                                Group {
                                    DisplayBahan(bahan: "Margarin", jumlah: bahans.bahanList[4].margarin, satuan: "gr")
                                        .padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Mentega", jumlah: bahans.bahanList[4].mentega, satuan: "gr").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Gula Halus", jumlah: bahans.bahanList[4].gula_halus, satuan: "gr").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Telur Utuh", jumlah: bahans.bahanList[4].telur_utuh, satuan: "Butir").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Susu Bubuk", jumlah: bahans.bahanList[4].susu_bubuk, satuan: "gr").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Tepung Terigu", jumlah: bahans.bahanList[4].tepung_terigu, satuan: "gr").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Selai Nanas", jumlah: bahans.bahanList[4].selai_nanas, satuan: "gr").padding([.trailing, .leading])

                                }
                                Group {
                                    DisplayBahan(bahan: "Kuning Telur", jumlah: bahans.bahanList[4].kuning_telur, satuan: "Butir").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Maizena", jumlah: bahans.bahanList[4].maizena, satuan: "gr").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Keju Gouda", jumlah: bahans.bahanList[4].keju_gouda, satuan: "gr").padding([.trailing, .leading])
                                    DisplayBahan(bahan: "Keju Cheddar", jumlah: bahans.bahanList[4].keju_cheddar, satuan: "gr").padding([.trailing, .leading])
                                }
                            }.padding([.top, .bottom])
                        }
                    }
                }.navigationTitle(Text("Belanja"))
//            }
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

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView(bahans: BahanList(), totals: TotalList())
    }
}
