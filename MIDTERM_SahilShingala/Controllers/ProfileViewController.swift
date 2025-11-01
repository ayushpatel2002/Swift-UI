import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var txtAge: UITextField!
    @IBAction func go(_ sender: Any) { performSegue(withIdentifier: "toProfileDetail", sender: self) }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toProfileDetail" {
            let d = segue.destination as! ProfileDetailViewController
            d.name = txtName.text ?? ""
            d.age = txtAge.text ?? ""
        }
    }
}
