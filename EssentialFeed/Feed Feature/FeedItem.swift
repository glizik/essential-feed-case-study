//
//  FeedItem.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 2023. 09. 17..
//

import Foundation

public struct FeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
}
