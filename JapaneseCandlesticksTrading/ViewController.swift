//
//  ViewController.swift
//  JapaneseCandlesticksTrading
//
//  Created by Kseniya Smirnova on 25.10.22.
//

import UIKit
import Charts
import SnapKit

class ViewController: UIViewController {
    lazy var presenter = Presenter(with: self, array: candleArray, chartView: chartView)
    
    private lazy var chartView: CandleStickChartView = {
        let chartView = CandleStickChartView()
        return chartView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(chartView)
        setConstraints()
        updateGraphic()
    }
    
    private func setConstraints() {
        chartView.snp.makeConstraints { (make) in
            make.left.right.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(500)
        }
    }
}

extension ViewController: PresenterView {
    func updateGraphic() {
        chartView.data = presenter.setDataCount()
    }
}

