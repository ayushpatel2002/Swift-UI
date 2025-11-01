import UIKit
import FBSDKLoginKit

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
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        if error == nil, let r = result, !r.isCancelled {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "MainTabBar")
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true)
        }
    }
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {}
}
