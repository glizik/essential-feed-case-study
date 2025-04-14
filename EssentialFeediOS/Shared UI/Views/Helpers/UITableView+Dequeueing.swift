//
//  UITableView+Dequeueing.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 24/07/2024.
//

import UIKit

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>() -> T {
        let identifier = String(describing: T.self)
        return dequeueReusableCell(withIdentifier: identifier) as! T
    }
}
