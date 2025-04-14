//
//  UIRefreshControl+Helpers.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 2025. 04. 14..
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
