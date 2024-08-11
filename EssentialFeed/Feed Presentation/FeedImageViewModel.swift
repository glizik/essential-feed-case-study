//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 18/06/2024.
//

import Foundation

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool

    public var hasLocation: Bool {
        location != nil
    }
}
