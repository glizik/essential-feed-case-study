//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Gabor L Lizik on 2024. 12. 31..
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.main.run(until: Date())
    }
}
