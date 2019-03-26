//
//  TestView.swift
//  XibPractice
//
//  Created by Mitchell Socia on 3/22/19.
//  Copyright © 2019 Mitchell Socia. All rights reserved.
//

import UIKit

class TestView: UIView {

    @IBOutlet var contentView: UIView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("TestView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    

}
