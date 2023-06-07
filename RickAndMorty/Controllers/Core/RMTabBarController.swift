//
//  RMTabBarController.swift
//  RickAndMorty
//
//  Created by Egor Mikhalevich on 6.06.23.
//

import UIKit

/// Controller to house tabs and root tab controllers
class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Character",
                                       image: UIImage(systemName: "person"),
                                       selectedImage: UIImage(systemName: "person.fill"))
        nav2.tabBarItem = UITabBarItem(title: "Locations",
                                       image: UIImage(systemName: "globe.europe.africa"),
                                       selectedImage: UIImage(systemName: "globe.europe.africa.fill"))
        nav3.tabBarItem = UITabBarItem(title: "Episodes",
                                       image: UIImage(systemName: "tv"),
                                       selectedImage: UIImage(systemName: "tv.fill"))
        nav4.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gearshape"),
                                       selectedImage: UIImage(systemName: "gearshape.fill "))
        
        let navTabs = [nav1, nav2, nav3, nav4]
        navTabs.forEach { $0.navigationBar.prefersLargeTitles = true }
        
        setViewControllers(
            navTabs,
            animated: true
        )
    }


}

