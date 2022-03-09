//
//  TabBarController.swift
//  MeetMe
//
//  Created by Stas Dashkevich on 9.03.22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let peopleVC = PeopleViewController()
        let ListVC = ListViewController()
        tabBar.tintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        let peopleImage = UIImage(systemName: "bubble.left.and.bubble.right")!
        let convImage = UIImage(systemName: "person.2")!
        viewControllers = [
        generateNavigationontroller(rootviewController: ListVC, title: "Conversations", image: convImage),
        generateNavigationontroller(rootviewController: peopleVC, title: "People", image: peopleImage)
        ]
    }
    
    private func generateNavigationontroller(rootviewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootviewController)
        navigationVC.tabBarItem.title = title
        tabBarItem.image = image
        return navigationVC
    }
}
