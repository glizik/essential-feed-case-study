//
//  FeedImagePresenter.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 24/07/2024.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}
