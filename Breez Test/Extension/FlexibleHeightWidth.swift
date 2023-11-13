//
//  FlexibleHeightWidth.swift
//  Breez Test
//
//  Created by Sultan on 9/11/23.
//

import UIKit

extension NSObject {
    func flexibleHeight(to: CGFloat) -> CGFloat {
        return UIScreen.main.bounds.height * to / 852
    }
    func flexibleWidth(to: CGFloat) -> CGFloat {
        return UIScreen.main.bounds.width * to / 393
    }
}
