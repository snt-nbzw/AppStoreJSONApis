//
//  PreviewCell.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/05/09.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class PreviewCell: UICollectionViewCell {

    let previewLabel = UILabel(text: "Preview", font: .boldSystemFont(ofSize: 20))
    let horizontalController = PreviewScreenshotsController()

    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(previewLabel)
        addSubview(horizontalController.view)

        previewLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20))

        horizontalController.view.anchor(top: previewLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 20, left: 0, bottom: 0, right: 0))
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
}
