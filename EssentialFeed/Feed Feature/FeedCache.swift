//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 12/11/2024.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
