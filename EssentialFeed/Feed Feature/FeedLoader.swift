//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 2023. 09. 17..
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
