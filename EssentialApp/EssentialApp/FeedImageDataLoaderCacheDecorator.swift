//
//  FeedImageDataLoaderCacheDecorator.swift
//  EssentialApp
//
//  Created by Gabor L Lizik on 12/11/2024.
//

import Foundation
import EssentialFeed

public final class FeedImageDataLoaderCacheDecorator: FeedImageDataLoader {
    private let decoratee: FeedImageDataLoader
    private let cache: FeedImageDataCache

    public init(decoratee: FeedImageDataLoader, cache: FeedImageDataCache) {
        self.decoratee = decoratee
        self.cache = cache
    }

    public func loadImageData(from url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) -> FeedImageDataLoaderTask {
        return decoratee.loadImageData(from: url) { [weak self] result in
            completion(result.map { data in
                self?.cache.saveIgnoreingResult(data, for: url)
                return data
            })
        }
    }
}

private extension FeedImageDataCache {
    func saveIgnoreingResult(_ data: Data, for url: URL) {
        save(data, for: url) { _ in }
    }
}
