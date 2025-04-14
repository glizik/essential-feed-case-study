//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 11/08/2024.
//

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private(set) public var label: UILabel!
    
    public var message: String? {
        get { return isVisible ? label.text : nil }
    }

    private var isVisible: Bool {
        return alpha > 0
    }

    public override func awakeFromNib() {
        super.awakeFromNib()

        label.text = ""
        alpha = 0
    }

    func show(message: String) {
        label.text = message

        UIView.animate(withDuration: 0.25) {
            self.alpha = 1
        }
    }

    @IBAction func hideMessage() {
        UIView.animate(
            withDuration: 0.25,
            animations: { self.alpha = 0 },
            completion: { completed in
                if completed {
                    self.label.text = ""
                }
            })
    }
}
