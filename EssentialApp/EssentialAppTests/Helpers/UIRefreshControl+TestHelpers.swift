//
//  UIRefreshControl+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Gabor L Lizik on 2024. 12. 14..
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
