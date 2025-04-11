//
//  ResourceErrorViewModel.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 10/08/2024.
//

import Foundation

public struct ResourceErrorViewModel {
    public let message: String?
    
    static var noError: ResourceErrorViewModel {
        ResourceErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> ResourceErrorViewModel {
        ResourceErrorViewModel(message: message)
    }
}
