//
//  UIButton+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Gabor L Lizik on 2024. 12. 14..
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
