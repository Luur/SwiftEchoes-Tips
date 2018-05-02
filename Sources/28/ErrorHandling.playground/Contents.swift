//: CopyRight - dsrijan//srijan12345@gmail.com
//: Playground - noun: a place where people can play

import UIKit

enum BasicError: Error {
    
// Make cases of your errors

    case emailIsInvalid
    case passwordIsInvalid
    case captchaIsInvalid
    
}


// Localized Error
extension BasicError: LocalizedError {
    public var errorDescription: String? {
       switch self {
        case .emailIsInvalid:
            return NSLocalizedString("Email is invalid", comment: "")
        case .passwordIsInvalid:
            return NSLocalizedString("Password id is invalid", comment: "")
        case .captchaIsInvalid:
            return NSLocalizedString("Captcha is invalid", comment: "")
         default:
            return NSLocalizedString("Something went wrong", comment: "")
        }
    }
}


func verifyLogin(email:String, password: String, captcha: String) throws{
    
    // You can use your own logic to verify. This is only a sample.
    if email.count < 1 {
        throw BasicError.emailIsInvalid
    }
    if password.count < 1 {
        throw BasicError.passwordIsInvalid
    }
    if captcha.count < 1 {
        throw BasicError.captchaIsInvalid
    }
    
}

// Sample Example

do {
    let verifiedLogin = try verifyLogin(email: "afsfddfs", password: "", captcha: "asfasdf")
}catch let error  {
    print(error.localizedDescription)
}


