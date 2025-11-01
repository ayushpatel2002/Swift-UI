import UIKit

class ProfileDetailViewController: UIViewController {
    var name = ""
    var age = ""
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Hello \(name). Age \(age)"
    }
}
