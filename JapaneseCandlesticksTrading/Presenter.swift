//
//  Presenter.swift
//  JapaneseCandlesticksTrading
//
//  Created by Kseniya Smirnova on 31.10.22.
//

import UIKit
import Charts

protocol PresenterView: AnyObject {
    func updateGraphic()
}

class Presenter {
    weak var view: PresenterView?
    var array: [CandleModel]?
    var chartView: CandleStickChartView?
    
    init(with view: PresenterView, array: [CandleModel], chartView: CandleStickChartView) {
        self.view = view
        self.array = array
        self.chartView = chartView
    }

    func setDataCount() -> CandleChartData {
        guard let array = array, let chartView = chartView else { return CandleChartData() }
        
        setUI(chartView: chartView)
        
        let candles = array.map { (i) -> CandleChartDataEntry in
            return CandleChartDataEntry(x: Double(i.mult), shadowH: i.high, shadowL: i.low, open: i.open, close: i.close, icon: nil)
        }
        
        let set1 = CandleChartDataSet(entries: candles, label: "Data Set")
        set1.axisDependency = .left
        set1.drawIconsEnabled = false
        set1.drawValuesEnabled = false
        set1.shadowColor = .darkGray
        set1.decreasingColor = .systemRed
        set1.decreasingFilled = true
        set1.increasingColor = .systemGreen
        set1.increasingFilled = true
        
        let data = CandleChartData(dataSet: set1)
        return data
    }
    
    private func setUI(chartView: CandleStickChartView) {
        chartView.legend.horizontalAlignment = .right
        chartView.legend.verticalAlignment = .top
        chartView.legend.orientation = .vertical
        chartView.legend.drawInside = false
        
        chartView.leftAxis.axisMinimum = 0
        chartView.rightAxis.enabled = false
        
        chartView.xAxis.labelPosition = .bottom
    }
}
