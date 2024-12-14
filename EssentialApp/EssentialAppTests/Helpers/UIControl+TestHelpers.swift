//
//  UIControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Gabor L Lizik on 2024. 12. 14..
//

import UIKit

extension UIControl {
    func simulate(event: UIControl.Event) {
        allTargets.forEach { target in
            actions(forTarget: target, forControlEvent: event)?.forEach {
                (target as NSObject).perform(Selector($0))
            }
        }
    }
}
