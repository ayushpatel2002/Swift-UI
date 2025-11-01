import UIKit

class NotesViewController: UIViewController {
    @IBOutlet weak var txtNote: UITextView!
    @IBAction func go(_ sender: Any) { performSegue(withIdentifier: "toNoteDetail", sender: self) }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNoteDetail" {
            let d = segue.destination as! NotesDetailViewController
            d.noteText = txtNote.text ?? ""
        }
    }
}
