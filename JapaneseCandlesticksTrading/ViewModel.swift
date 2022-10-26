//
//  ViewModel.swift
//  JapaneseCandlesticksTrading
//
//  Created by Kseniya Smirnova on 26.10.22.
//

import UIKit
import Charts

class ViewModel {
    
    func setDataCount(chartView: CandleStickChartView, array: [CandleModel]) {
        setUI(chartView: chartView)
        
        let yVals1 = array.map { (i) -> CandleChartDataEntry in
            return CandleChartDataEntry(x: Double(i.mult), shadowH: i.high, shadowL: i.low, open: i.open, close: i.close, icon: nil)
        }
        
        let set1 = CandleChartDataSet(entries: yVals1, label: "Data Set")
        set1.axisDependency = .left
        set1.drawIconsEnabled = false
        set1.drawValuesEnabled = false
        set1.shadowColor = .darkGray
        set1.decreasingColor = .systemRed
        set1.decreasingFilled = true
        set1.increasingColor = .systemGreen
        set1.increasingFilled = true
        
        let data = CandleChartData(dataSet: set1)
        chartView.data = data
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
