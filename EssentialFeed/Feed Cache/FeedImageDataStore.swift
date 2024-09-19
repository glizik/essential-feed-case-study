//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 19/09/2024.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
