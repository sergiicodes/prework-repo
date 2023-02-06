//import 
import UIKit

//each field 
class ViewController: UIViewController {
    @IBOutlet weak var BillField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!


    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

//rescind keyboard
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

//calcualtion
    @IBAction func calculateTip(_ sender: Any) {
        
        //tip amnt
        let tipPercent = [0.15,0.18,0.2]

        let bill = Double(BillField.text!) ?? 0

        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip

        //decimal to 2 places
        tipLabel.text = String(format: "$%/.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
    }

}
