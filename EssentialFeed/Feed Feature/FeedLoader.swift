//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 2023. 09. 17..
//

import Foundation

public enum LoadFeedResult {
    case success([FeedImage])
    case failure(Error)
}

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
