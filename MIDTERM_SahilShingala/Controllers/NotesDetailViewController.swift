import UIKit

class NotesDetailViewController: UIViewController {
    var noteText = ""
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = noteText
    }
}
