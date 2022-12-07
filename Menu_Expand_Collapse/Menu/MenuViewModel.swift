//
//  MenuViewModel.swift
//  Menu_Expand_Collapse
//
//  Created by trungnghia on 07/12/2022.
//

import Foundation

class MenuViewModel {
    let sections: [MenuModel] = [
        MenuModel(title: .home, options: [.homeFeature1, .homeFeature2, .homeFeature3, .homeFeature4]),
        MenuModel(title: .send, options: [.sendFeature1, .sendFeature2, .sendFeature3]),
        MenuModel(title: .bookmark, options: []),
        MenuModel(title: .delete, options: []),
        MenuModel(title: .logout, options: [])
    ]
    
    func createMainMenuWithoutSubMenu(menu: String) -> MenuModel.MainMenuWithoutSubMenu? {
        MenuModel.MainMenuWithoutSubMenu(rawValue: menu)
    }
}
