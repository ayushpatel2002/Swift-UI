import UIKit

class FinanceViewController: UIViewController {
    @IBOutlet weak var txtIncome: UITextField!
    @IBOutlet weak var txtExpense: UITextField!
    @IBAction func go(_ sender: Any) { performSegue(withIdentifier: "toFinanceSummary", sender: self) }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFinanceSummary" {
            let d = segue.destination as! FinanceSummaryViewController
            let income = Double(txtIncome.text ?? "0") ?? 0
            let expense = Double(txtExpense.text ?? "0") ?? 0
            d.balance = income - expense
        }
    }
}
