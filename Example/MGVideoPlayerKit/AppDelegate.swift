//
//  AppDelegate.swift
//  MGVideoPlayerKit
//
//  Created by AldoOS on 03/16/2019.
//  Copyright (c) 2019 AldoOS. All rights reserved.
//

import UIKit
import MGVideoPlayerKit
import Firebase
import MGTemplateKit

class AssetsData: MGVideoPlayerAssetData {}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, MGVideoPlayerControllerDelegate, MGVideoPlayerControllerDataSource {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        MGTemplate.setup()
        FirebaseApp.configure()
        GADMobileAds.sharedInstance().start(completionHandler: nil)

        window = UIWindow(frame: UIScreen.main.bounds)

        let videoPlayerController = MGVideoPlayerListController.instance
        videoPlayerController.assets = AssetsData.setup
        videoPlayerController.delegate = self
        videoPlayerController.dataSource = self
        
        window?.rootViewController = UINavigationController(rootViewController: videoPlayerController)
        window?.makeKeyAndVisible()
        
        return true
    }
    
    func controller(_ controller: UIViewController, didTapBarButtonItem barButtonItem: UIBarButtonItem) {
//        let items = [item.title!, item.description!]
//        let activityIndicator = UIActivityViewController(activityItems: items, applicationActivities: nil)
//        present(activityIndicator, animated: true)
//        if let popover = activityIndicator.popoverPresentationController {
//            popover.sourceView = self.view
//            popover.barButtonItem = barButtonItem
//        }
    }
    
    func controller(_ controller: UIViewController, didTapButton button: UIButton) {

    }
    
    func leftBarButtonItems(_ controller: UIViewController) -> [UIBarButtonItem] {
        if controller is MGVideoPlayerListController {
            let menuBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: nil)
            menuBarButtonItem.style = .plain
            menuBarButtonItem.accessibilityIdentifier = "MENU"
            return [menuBarButtonItem]
        }
        let menuBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: nil, action: nil)
        menuBarButtonItem.style = .plain
        menuBarButtonItem.accessibilityIdentifier = "MENU"
        return [menuBarButtonItem]
    }
    
    func rightBarButtonItems(_ controller: UIViewController) -> [UIBarButtonItem] {
        if controller is MGVideoPlayerController {
            let shareBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
            shareBarButtonItem.style = .plain
            shareBarButtonItem.accessibilityIdentifier = "SHARE"
            return [shareBarButtonItem]
        }
        let shareBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
        shareBarButtonItem.style = .plain
        shareBarButtonItem.accessibilityIdentifier = "SHARE"
        return [shareBarButtonItem]
    }

}

