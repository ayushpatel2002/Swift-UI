import UIKit
import FBSDKLoginKit
import FBSDKCoreKit

class LoginViewController: UIViewController, LoginButtonDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let b = FBLoginButton()
        b.permissions = ["public_profile", "email"]
        b.delegate = self
        b.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(b)
        NSLayoutConstraint.activate([
            b.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            b.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard AccessToken.current != nil else { return }
        transitionToMainInterface(animated: false)
    }

    private func transitionToMainInterface(animated: Bool) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let tabBar = storyboard.instantiateViewController(withIdentifier: "MainTabBar") as? UITabBarController else { return }
        tabBar.modalPresentationStyle = .fullScreen

        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = tabBar
            if animated {
                UIView.transition(with: window,
                                  duration: 0.3,
                                  options: [.transitionFlipFromRight],
                                  animations: nil,
                                  completion: nil)
            }
            return
        }

        present(tabBar, animated: animated)
    }

    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        if error == nil, let r = result, !r.isCancelled {
            transitionToMainInterface(animated: true)
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {}
}
