import UIKit

class TodoViewController: UIViewController {
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet weak var txtPriority: UITextField!
    @IBAction func go(_ sender: Any) { performSegue(withIdentifier: "toTaskDetail", sender: self) }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTaskDetail" {
            let d = segue.destination as! TodoDetailViewController
            d.task = txtTask.text ?? ""
            d.priority = txtPriority.text ?? ""
        }
    }
}
