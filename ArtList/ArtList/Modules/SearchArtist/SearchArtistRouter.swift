//
//  SearchArtistRouter.swift
//  Project: ArtList
//
//  Module: SearchArtist
//
//  By GENEXT-PC 22/02/20
//  Nooralam Shaikh 2020
//

// MARK: Imports

import UIKit

import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `SearchArtistRouter` and referenced by `SearchArtistPresenter`
protocol SearchArtistPresenterRouterProtocol: PresenterRouterProtocol {

}

// MARK: -

/// The Router for the SearchArtist module
final class SearchArtistRouter: RouterProtocol, SearchArtistPresenterRouterProtocol {

	// MARK: - Variables

	weak var viewController: UIViewController?
}
