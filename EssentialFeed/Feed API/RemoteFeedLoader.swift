//
//  RemoteFeedLoader.swift
//  EssentialFeed
//
//  Created by Mac on 2023. 10. 25..
//

import Foundation

public typealias RemoteFeedLoader = RemoteLoader<[FeedImage]>

public extension RemoteFeedLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: FeedItemsMapper.map)
    }
}
