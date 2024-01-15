//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 2023. 09. 17..
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>

    func load(completion: @escaping (Result) -> Void)
}
