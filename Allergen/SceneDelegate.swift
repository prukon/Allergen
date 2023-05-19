//
//  SceneDelegate.swift
//  Allergen
//
//  Created by Evgeniy Ustyan on 19.05.2023.
//
//пыльцевой мониторинг
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        //Создаем windows
        let window = UIWindow(windowScene: windowScene)
        
        //Создаем объект profileViewcontroller
        let profileViewcontroller = LogInViewController()
        let profileNovigationViewController = UINavigationController(rootViewController: profileViewcontroller)
        profileNovigationViewController.tabBarItem.title = "Profile"
        profileNovigationViewController.tabBarItem.image = UIImage(named: "person")
        
        //Создаем объект feedViewController
        let feedViewController = FeedViewController()
        let feedNovigationViewController = UINavigationController(rootViewController: feedViewController)
        feedNovigationViewController.tabBarItem.title = "Feed"
        feedNovigationViewController.tabBarItem.image = UIImage(named: "newspaper")
 
        //Создаем объект tabViewController
        let tabViewController = UITabBarController()
        tabViewController.viewControllers = [profileNovigationViewController, feedNovigationViewController]
        tabViewController.tabBar.backgroundColor = UIColor.systemFill
        tabViewController.tabBar.tintColor = UIColor.systemBlue
        
        //Устанавливаем NovigationViewController как rootController
        window.rootViewController =  tabViewController
        
        //Устанавливаем ранее созданное window как главное windows и делаем его видимым
        self.window = window
        window.makeKeyAndVisible()
    }
}
