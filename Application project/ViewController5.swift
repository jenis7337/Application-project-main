import UIKit

class ViewController5: UIViewController {
    
    
    @IBOutlet weak var newPasswordTextFiled: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setconfirmButton()
    }
    func setconfirmButton(){
        confirmButton.layer.cornerRadius = 30
        confirmButton.layer.masksToBounds = true
    }
    
    @IBAction func confirmButtonAction(_ sender: Any) {

        
        if (newPasswordTextFiled.text?.count ?? 0 != 6 ) && (confirmTextField.text?.count ?? 0 != 6){
            showAlert1()
            naviget()
        }
        else if newPasswordTextFiled.text == confirmTextField.text{
            naviget()
        }
        else{
            showAlert1()
        }
   
     
        func showAlert1(){
            
            let alert = UIAlertController(title: "Notice", message: "New Password not is Successsful", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: .default))
            present(alert, animated: true)
            
        }
        func naviget(){
            let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
            navigationController?.pushViewController(navigation, animated: true)
        }
    }
}
