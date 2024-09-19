//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Gabor L Lizik on 19/09/2024.
//

import Foundation

public protocol FeedImageDataStore {
    typealias RetrievalResult = Swift.Result<Data?, Error>
    typealias InsertionResult = Swift.Result<Void, Error>
    
    func insert(_ data: Data, for: URL, completion: @escaping (InsertionResult) -> Void)
    func retrieve(dataForURL url: URL, completion: @escaping (RetrievalResult) -> Void)
}
