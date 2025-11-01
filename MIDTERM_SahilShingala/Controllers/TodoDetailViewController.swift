import UIKit

class TodoDetailViewController: UIViewController {
    var task = ""
    var priority = ""
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = "Task: \(task) Priority: \(priority)"
    }
}
