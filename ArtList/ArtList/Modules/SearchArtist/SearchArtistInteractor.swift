//
//  SearchArtistInteractor.swift
//  Project: ArtList
//
//  Module: SearchArtist
//
//  By GENEXT-PC 22/02/20
//  Nooralam Shaikh 2020
//

// MARK: Imports

import Foundation
import SwiftyVIPER

// MARK: Protocols

/// Should be conformed to by the `SearchArtistInteractor` and referenced by `SearchArtistPresenter`
protocol SearchArtistPresenterInteractorProtocol {
	/// Requests the title for the presenter
	func requestTitle()
}

// MARK: -

/// The Interactor for the SearchArtist module
final class SearchArtistInteractor: SearchArtistPresenterInteractorProtocol {

	// MARK: - Variables

	weak var presenter: SearchArtistInteractorPresenterProtocol?

	// MARK: - SearchArtist Presenter to Interactor Protocol

	func requestTitle() {
		presenter?.set(title: "ArtList")
	}
}
