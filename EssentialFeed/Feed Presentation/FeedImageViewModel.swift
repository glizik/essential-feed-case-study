//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 18/06/2024.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        location != nil
    }
}
