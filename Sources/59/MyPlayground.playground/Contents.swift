import UIKit

protocol AlertPresentable {
    func presentErrorAlert(with message: String)
    func presentSuccessAlert(with message: String, action: ((UIAlertAction) -> Void)?)
    func presentConfirmationAlert(with message: String, action: ((UIAlertAction) -> Void)?)
}

extension AlertPresentable where Self: UIViewController {
    
    func presentErrorAlert(with message: String) {
        presentAlert(message: message, actions: [UIAlertAction(title: "OK", style: .cancel, handler: nil)])
    }
    
    func presentSuccessAlert(with message: String, action: ((UIAlertAction) -> Void)?) {
        presentAlert(message: message, actions: [UIAlertAction(title: "OK", style: .cancel, handler: action)])
    }
    
    func presentConfirmationAlert(with message: String, action: ((UIAlertAction) -> Void)?) {
        presentAlert(message: message, actions: [UIAlertAction(title: "Yes", style: .default, handler: action), UIAlertAction(title: "No", style: .cancel, handler: nil)])
    }
    
    private func presentAlert(title: String? = "", message: String? = nil, actions: [UIAlertAction] = []) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach { (action) in
            alertController.addAction(action)
        }
        present(alertController, animated: true, completion: nil)
    }
}

class ViewController: UIViewController, AlertPresentable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presentErrorAlert(with: "User not found")
        
        presentSuccessAlert(with: "File downloaded") { _ in
            // use downloaded file
        }
        
        presentConfirmationAlert(with: "Are you sure you would like to sign out?") { _ in
            // sign out user
        }
    }
}
