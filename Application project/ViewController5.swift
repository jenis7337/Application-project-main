import UIKit

class ViewController5: UIViewController {
    
    
    @IBOutlet weak var newPasswordTextFiled: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func confirmButtonAction(_ sender: Any) {
        //        let password = newPasswordTextFiled.text ?? ""
        //        let confirmPassword = confirmTextField.text ?? ""
        
        if (newPasswordTextFiled.text == "") && (confirmTextField.text == ""){
            showAlert1()
        }
        else if newPasswordTextFiled.text == confirmTextField.text{
            naviget()
        }
        else{
            showAlert1()
        }
        func setconfirmButton(){
            confirmButton.layer.cornerRadius = 30
            confirmButton.layer.masksToBounds = true
        }
     
        func showAlert1(){
            
            let alert = UIAlertController(title: "Notice", message: "New Password is Successsful", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            present(alert, animated: true)
            
        }
        func naviget(){
            let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
            navigationController?.pushViewController(navigation, animated: true)
        }
    }
}
