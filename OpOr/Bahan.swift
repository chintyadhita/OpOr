//
//  Bahan.swift
//  OpOr
//
//  Created by Cyntya Rahma Dita on 11/05/22.
//

import SwiftUI

struct Bahan {
    var nama_kue : String
    var margarin : Double
    var mentega : Double
    var gula_halus : Double
    var telur_utuh : Double
    var susu_bubuk : Double
    var tepung_terigu : Double
    var selai_nanas : Double
    var kuning_telur : Double
    var maizena : Double
    var keju_gouda : Double
    var keju_cheddar : Double
}

class BahanList : ObservableObject {
    @Published var bahanList = [
        Bahan(nama_kue: "NastarAsli", margarin: 150, mentega: 50, gula_halus: 40, telur_utuh: 1, susu_bubuk: 25, tepung_terigu: 300, selai_nanas: 150, kuning_telur: 2, maizena: 0, keju_gouda: 0, keju_cheddar: 0),
        Bahan(nama_kue: "KastengelAsli", margarin: 0, mentega: 200, gula_halus: 30, telur_utuh: 4, susu_bubuk: 60, tepung_terigu: 500, selai_nanas: 0, kuning_telur: 0, maizena: 100, keju_gouda: 300, keju_cheddar: 200),
        Bahan(nama_kue: "TotalBahanNastar", margarin: 0, mentega: 0, gula_halus: 0, telur_utuh: 0, susu_bubuk: 0, tepung_terigu: 0, selai_nanas: 0, kuning_telur: 0, maizena: 0, keju_gouda: 0, keju_cheddar: 0),
        Bahan(nama_kue: "TotalBahanKastengel", margarin: 0, mentega: 0, gula_halus: 0, telur_utuh: 0, susu_bubuk: 0, tepung_terigu: 0, selai_nanas: 0, kuning_telur: 0, maizena: 0, keju_gouda: 0, keju_cheddar: 0),
        Bahan(nama_kue: "TotalBahan", margarin: 0, mentega: 0, gula_halus: 0, telur_utuh: 0, susu_bubuk: 0, tepung_terigu: 0, selai_nanas: 0, kuning_telur: 0, maizena: 0, keju_gouda: 0, keju_cheddar: 0),
    ]
}
