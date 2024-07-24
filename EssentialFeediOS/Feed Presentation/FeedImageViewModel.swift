//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 18/06/2024.
//

import Foundation
import EssentialFeed

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool

    var hasLocation: Bool {
        location != nil
    }
}
