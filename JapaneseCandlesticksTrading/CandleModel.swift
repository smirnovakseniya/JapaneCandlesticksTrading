//
//  CandleModel.swift
//  JapaneseCandlesticksTrading
//
//  Created by Kseniya Smirnova on 26.10.22.
//


struct CandleModel {
    var mult: Int
    var high: Double
    var low: Double
    var open: Double
    var close: Double
}

let candleArray: [CandleModel] = [
    CandleModel(mult: 1, high: 7000, low: 3000, open: 3500, close: 6000),
    CandleModel(mult: 2, high: 15000, low: 6000, open: 10000, close: 8000),
    CandleModel(mult: 3, high: 4000, low: 2000, open: 2200, close: 3500),
    CandleModel(mult: 4, high: 9000, low: 7000, open: 5900, close: 7000),
    CandleModel(mult: 5, high: 15000, low: 10000, open: 11000, close: 14000),
    CandleModel(mult: 6, high: 18000, low: 3000, open: 11000, close: 6000),
    CandleModel(mult: 7, high: 8750, low: 6000, open: 6500, close: 8000),
    CandleModel(mult: 8, high: 4000, low: 2000, open: 2200, close: 3500),
    CandleModel(mult: 9, high: 9000, low: 5000, open: 8000, close: 7000),
    CandleModel(mult: 10, high: 15000, low: 10000, open: 11000, close: 14000)
]
