import UIKit

class ViewController14: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func filtterButton(_ sender: Any) {
        
        let navigation = storyboard?.instantiateViewController(withIdentifier: "filtterPage") as! filtterPage
        navigationController?.pushViewController(navigation, animated: true)
        
    }
    
    @IBAction func userButtonAction(_ sender: Any) {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "userPage") as! userPage
        navigationController?.pushViewController(navigation, animated: true)
    }
}
