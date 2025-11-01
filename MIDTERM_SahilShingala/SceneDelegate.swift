import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("[AppDelegate] didFinishLaunching")

        // Fallback: if scenes are not configured, manually create a window so the app is visible.
        if window == nil {
            window = UIWindow(frame: UIScreen.main.bounds)
            let root = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() ?? UIViewController()
            root.view.backgroundColor = .systemBackground
            window?.rootViewController = root
            window?.makeKeyAndVisible()
            print("[AppDelegate] Fallback window shown")
        }
        return true
    }

    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

}
