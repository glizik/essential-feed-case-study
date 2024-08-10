//
//  FeedErrorViewModel.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 10/08/2024.
//

import Foundation

public struct FeedErrorViewModel {
    public let message: String?
    
    static var noError: FeedErrorViewModel {
        FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        FeedErrorViewModel(message: message)
    }
}
