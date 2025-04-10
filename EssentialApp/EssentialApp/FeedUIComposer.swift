//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Gabor L Lizik on 17/06/2024.
//

import UIKit
import Combine
import EssentialFeed
import EssentialFeediOS

public final class FeedUIComposer {
    private init() {}

    private typealias FeedPresentationAdapter = LoadResourcePresentationAdapter<[FeedImage], FeedViewAdapter>

    public static func feedComposedWith(
        feedLoader: @escaping () -> AnyPublisher<[FeedImage], Error>,
        imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher
    ) -> FeedViewController {
        let presentationAdapter = FeedPresentationAdapter(loader: feedLoader)

        let feedController = makeFeedViewController(
                delegate: presentationAdapter,
                title: FeedPresenter.title)
        
        presentationAdapter.presenter = LoadResourcePresenter(
            resourceView: FeedViewAdapter(
                controller: feedController,
                imageLoader: imageLoader),
            loadingView: WeakRefVirtualProxy(feedController),
            errorView: WeakRefVirtualProxy(feedController),
            mapper: FeedPresenter.map)

        return feedController
    }
    
    private static func makeFeedViewController(delegate: FeedViewControllerDelegate, title: String) -> FeedViewController {
       let bundle = Bundle(for: FeedViewController.self)
       let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
       let feedController = storyboard.instantiateInitialViewController() as! FeedViewController
       feedController.delegate = delegate
       feedController.title = FeedPresenter.title
       return feedController
   }
}
