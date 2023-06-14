import UIKit

class ViewController13: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func userButtonASction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "userPage") as! userPage
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
