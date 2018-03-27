//: Playground - noun: a place where people can play

import UIKit

class TestViewController: UIViewController {
    
    @objc func searchBarDidEndTyping(_ textField: UISearchBar) {
        print("User finsihed typing text in search bar")
    }
    
    @objc func textFieldDidEndTyping(_ textField: UITextField) {
        print("User finished typing text in text field")
    }
}

extension TestViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(searchBarDidEndTyping), object: searchBar)
        self.perform(#selector(searchBarDidEndTyping), with: searchBar, afterDelay: 0.5)
        return true
    }
}

extension TestViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        NSObject.cancelPreviousPerformRequests(withTarget: self, selector: #selector(textFieldDidEndTyping), object: textField)
        self.perform(#selector(textFieldDidEndTyping), with: textField, afterDelay: 0.5)
        return true
    }
}


