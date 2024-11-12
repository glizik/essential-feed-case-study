//
//  FeedLoaderStub.swift
//  EssentialAppTests
//
//  Created by Gabor L Lizik on 12/11/2024.
//

import EssentialFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result
    
    init(result: FeedLoader.Result) {
        self.result = result
    }
    
    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
