import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ensure a visible baseline appearance
        if view.backgroundColor == nil { view.backgroundColor = .systemBackground }
        tabBar.isHidden = false
        selectedIndex = 0
        print("[TabBarController] viewDidLoad – items: \(tabBar.items?.count ?? 0)")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("[TabBarController] viewDidAppear – selectedIndex: \(selectedIndex)")
    }
}
