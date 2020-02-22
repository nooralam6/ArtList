//
//  SearchArtistPresenter.swift
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

/// Should be conformed to by the `SearchArtistPresenter` and referenced by `SearchArtistViewController`
protocol SearchArtistViewPresenterProtocol: ViewPresenterProtocol {

}

/// Should be conformed to by the `SearchArtistPresenter` and referenced by `SearchArtistInteractor`
protocol SearchArtistInteractorPresenterProtocol: class {
	/** Sets the title for the presenter
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The Presenter for the SearchArtist module
final class SearchArtistPresenter: SearchArtistViewPresenterProtocol, SearchArtistInteractorPresenterProtocol {

	// MARK: - Constants

	let router: SearchArtistPresenterRouterProtocol
	let interactor: SearchArtistPresenterInteractorProtocol

	// MARK: Variables

	weak var view: SearchArtistPresenterViewProtocol?

	// MARK: Inits

	init(router: SearchArtistPresenterRouterProtocol, interactor: SearchArtistPresenterInteractorProtocol) {
		self.router = router
		self.interactor = interactor
	}

	// MARK: - SearchArtist View to Presenter Protocol

	func viewLoaded() {
		interactor.requestTitle()
	}

	// MARK: - SearchArtist Interactor to Presenter Protocol

	func set(title: String?) {
		view?.set(title: title)
	}
}
