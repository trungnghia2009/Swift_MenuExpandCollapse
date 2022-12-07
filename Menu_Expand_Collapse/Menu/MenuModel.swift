//
//  MenuModel.swift
//  Menu_Expand_Collapse
//
//  Created by trungnghia on 07/12/2022.
//

import Foundation

protocol MenuNameWithSubMenu {
    static var home: Self { get }
    static var send: Self { get }
}

protocol MenuNameWithOutSubMenu {
    static var bookmark: Self { get }
    static var delete: Self { get }
    static var logout: Self { get }
}

class MenuModel {
    let title: MainMenu
    let options: [SubMenu]
    var isOpened = false
    
    init(title: MainMenu, options: [SubMenu], isOpened: Bool = false) {
        self.title = title
        self.options = options
        self.isOpened = isOpened
    }
    
    enum MainMenu: String, MenuNameWithSubMenu, MenuNameWithOutSubMenu {
        case home = "Home"
        case send = "Send"
        case bookmark = "Book mark"
        case delete = "Delete"
        case logout = "Logout"
        
        var menuImage: String {
            switch self {
            case .home: return "house"
            case .send: return "paperplane"
            case .bookmark: return "bookmark"
            case .delete: return "trash"
            case .logout: return "xmark"
            }
        }
    }
    
    enum MainMenuWithoutSubMenu: String, MenuNameWithOutSubMenu {
        case bookmark = "Book mark"
        case delete = "Delete"
        case logout = "Logout"
    }
    
    enum SubMenu: String {
        case homeFeature1 = "Home feature 1"
        case homeFeature2 = "Home feature 2"
        case homeFeature3 = "Home feature 3"
        case homeFeature4 = "Home feature 4"
        case sendFeature1 = "Send feature 1"
        case sendFeature2 = "Send feature 2"
        case sendFeature3 = "Send feature 3"
    }
}
