
import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let correctPassword = "qwerty"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        guard let phoneNumber = phoneNumberTextField.text, phoneNumber.hasPrefix("8908") else {
            showErrorAlert(message: "Incorrect phone number")
            return
        }
        
        guard let password = passwordTextField.text, password == correctPassword else {
            showErrorAlert(message: "Incorrect password")
            return
        }
        
        let contactsViewController = ContactsViewController()

        
        let navigationController = UINavigationController(rootViewController: contactsViewController)
        navigationController.popViewController(animated: true)
        navigationController.modalPresentationStyle = .fullScreen
        present(navigationController, animated: true, completion: nil)
    }
    
    func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}



