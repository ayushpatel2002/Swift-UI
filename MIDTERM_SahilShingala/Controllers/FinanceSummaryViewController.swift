import UIKit

class FinanceSummaryViewController: UIViewController {
    var balance: Double = 0
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl.text = String(format: "Remaining Balance: $%.2f", balance)
    }
}
