//
//  SearchArtistViewController.swift
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

/// Should be conformed to by the `SearchArtistViewController` and referenced by `SearchArtistPresenter`
protocol SearchArtistPresenterViewProtocol: class {
	/** Sets the title for the view
	- parameters:
		- title The title to set
	*/
	func set(title: String?)
}

// MARK: -

/// The View Controller for the SearchArtist module
class SearchArtistViewController: UIViewController, SearchArtistPresenterViewProtocol {

	// MARK: - Constants

	let presenter: SearchArtistViewPresenterProtocol

	// MARK: Variables

	// MARK: Inits

	init(presenter: SearchArtistViewPresenterProtocol) {
		self.presenter = presenter
		super.init(nibName: nil, bundle: nil)
	}

	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: - Load Functions

	override func viewDidLoad() {
    	super.viewDidLoad()
		presenter.viewLoaded()

		view.backgroundColor = .white
    }

	// MARK: - SearchArtist Presenter to View Protocol

	func set(title: String?) {
		self.title = title
	}
}
