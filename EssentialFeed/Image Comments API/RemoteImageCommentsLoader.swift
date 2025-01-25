//
//  RemoteImageCommentsLoader.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 2025. 01. 12..
//


import Foundation

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
