//
//  AppsPageHeader.swift
//  AppStoreJSONApis
//
//  Created by member on 2020/04/05.
//  Copyright © 2020 Shunta Nabezawa. All rights reserved.
//

import UIKit

class AppsPageHeader: UICollectionReusableView  {

    let appHeaderHorizontalController = AppHeaderHorizontalController()

    override init(frame: CGRect) {
        super.init(frame: frame)

//        backgroundColor = .blue

        appHeaderHorizontalController.view.backgroundColor = .purple
        addSubview(appHeaderHorizontalController.view)
        appHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
