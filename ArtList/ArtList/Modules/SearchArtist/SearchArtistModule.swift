//
//  SearchArtistModule.swift
//  Project: ArtList
//
//  Module: SearchArtist
//
//  By GENEXT-PC 22/02/20
//  Nooralam Shaikh 2020
//

// MARK: Imports

import SwiftyVIPER
import UIKit

// MARK: -

/// Used to initialize the SearchArtist VIPER module
final class SearchArtistModule: ModuleProtocol {

	// MARK: - Variables

	private(set) lazy var interactor: SearchArtistInteractor = {
		SearchArtistInteractor()
	}()

	private(set) lazy var router: SearchArtistRouter = {
		SearchArtistRouter()
	}()

	private(set) lazy var presenter: SearchArtistPresenter = {
		SearchArtistPresenter(router: self.router, interactor: self.interactor)
	}()

	private(set) lazy var view: SearchArtistViewController = {
		SearchArtistViewController(presenter: self.presenter)
	}()

	// MARK: - Module Protocol Variables

	var viewController: UIViewController {
		return view
	}

	// MARK: Inits

	init() {
		presenter.view = view
		router.viewController = view
		interactor.presenter = presenter
	}
}
