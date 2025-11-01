import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }

        let window = UIWindow(windowScene: windowScene)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            assertionFailure("Expected an initial view controller in Main.storyboard")
            return
        }

        if initialViewController.view.backgroundColor == nil {
            initialViewController.view.backgroundColor = .systemBackground
        }

        window.rootViewController = initialViewController
        window.makeKeyAndVisible()
        self.window = window
    }
}
