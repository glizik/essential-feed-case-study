//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 2023. 09. 17..
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
