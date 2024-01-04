//
//  CoreDataFeedStore.swift
//  EssentialFeed
//
//  Created by Lizik Gábor on 03/01/2024.
//

import CoreData

public final class CoreDataFeedStore: FeedStore {
    public init() {}

    public func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.empty)
    }

    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {

    }

    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {

    }
}

@objc(ManagedCache)
internal class ManagedCache: NSManagedObject {
    @NSManaged internal var timestamp: Data
    @NSManaged internal var feed: NSOrderedSet
}

@objc(ManagedFeedImage)
internal class ManagedFeedImage: NSManagedObject {
    @NSManaged public var id: UUID
    @NSManaged public var imageDescription: String?
    @NSManaged public var location: String?
    @NSManaged public var url: URL
    @NSManaged public var cache: ManagedCache
}
