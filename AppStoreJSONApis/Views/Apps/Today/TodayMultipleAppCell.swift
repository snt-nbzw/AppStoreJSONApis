//
//  TodayMultipleAppCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/13.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class TodayMultipleAppCell: BaseTodayCell {

    override var todayItem: TodayItem! {
        didSet {
            categoryLabel.text = todayItem.category
            titleLabel.text = todayItem.title
        }
    }

    let categoryLabel = UILabel(text: "LIFE HACK", font: .boldSystemFont(ofSize: 20))
    let titleLabel = UILabel(text: "Utilizing your Time", font: .boldSystemFont(ofSize: 32), numberOfLines: 2)

    let multipleAppsController = UIViewController()

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = .white
        layer.cornerRadius = 16

        multipleAppsController.view.backgroundColor = .red

        let stackView = VerticalStackView(arrangedSubview: [
            categoryLabel,
            titleLabel,
            multipleAppsController.view
        ], spacing: 12)

        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 24, left: 24, bottom: 24, right: 24))
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}