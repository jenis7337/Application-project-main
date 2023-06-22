import UIKit

class ViewController5: UIViewController {
    
    @IBOutlet weak var hideButton2: UIButton!
    @IBOutlet weak var hideButton1: UIButton!
    @IBOutlet weak var newPasswordTextFiled: UITextField!
    @IBOutlet weak var confirmTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        hideButton1.addTarget(self, action: #selector(togglePasswordVisibility), for: .touchUpInside)
        //        setconfirmButton()
    }
    @objc func togglePasswordVisibility() {
          newPasswordTextFiled.isSecureTextEntry.toggle()
          confirmTextField.isSecureTextEntry.toggle()
          
          if newPasswordTextFiled.isSecureTextEntry {
              hideButton1.setImage(UIImage(named: "closeey"), for: .normal)
          } else {
              hideButton1.setImage(UIImage(named: "openey"), for: .normal)
          }
      }

    @IBAction func confirmButtonAction(_ sender: Any) {
        //        let password = newPasswordTextFiled.text ?? ""
        //        let confirmPassword = confirmTextField.text ?? ""
        
        if newPasswordTextFiled.text == "" && confirmTextField.text == ""{
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
        //        func showAlert(title:String){
        //
        //            let alert = UIAlertController(title: "Notice", message: "New Password is Successsful", preferredStyle: .alert)
        //            alert.addAction(UIAlertAction(title: "Ok", style: .default,handler: { [self] _ in
        //                naviget()
        //            }))
        //            alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        //            present(alert, animated: true)
        //
        //        }
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
