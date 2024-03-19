//
//  Turkish_Opros_1App.swift
//  Turkish Opros 1
//
//  Created by Mac on 12.03.2024.
//

import SwiftUI
import AppsFlyerLib
import UIKit
import WebKit
import OneSignalFramework



@main
struct Turkish_Opros_1App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        
        WindowGroup {
            ContentView()
                
        }
    }
}


class AppDelegate: UIResponder, UIApplicationDelegate {
    // Добавьте следующую переменную экземпляра AppsFlyerTracker в класс AppDelegate
    var appsFlyerTracker: AppsFlyerLib?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool{
        

        appsFlyerTracker = AppsFlyerLib.shared()
        appsFlyerTracker?.appsFlyerDevKey = "FVS24b72a7nVw7ZimgMj5H"
        
        
        appsFlyerTracker?.appleAppID = "6479641310"
        appsFlyerTracker?.isDebug = true
        

        if let url = launchOptions?[.url] as? URL {
            appsFlyerTracker?.handleOpen(url, options: nil)
        }
        
        
        OneSignal.Debug.setLogLevel(.LL_VERBOSE)
        OneSignal.initialize("be67b658-16ac-4a97-9305-edfbf3fb1aa9", withLaunchOptions: launchOptions)
        OneSignal.Notifications.requestPermission({ accepted in
            print("User accepted notifications: \(accepted)")
        }, fallbackToSettings: true)
                    
        
        return true
    }
    

    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        
        appsFlyerTracker?.handleOpen(url, options: options)
        return true
    }

}



