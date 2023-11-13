//
//  BaseView.swift
//  Breez Test
//
//  Created by Sultan on 8/11/23.
//

import UIKit
import SnapKit


class BaseView : UIView {
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        setupViews()
        setupConstraints()
    }
        
    func setupViews() {}
    func setupConstraints() {}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
