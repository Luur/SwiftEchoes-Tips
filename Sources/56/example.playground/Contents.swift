import UIKit

enum UserError: Error {
    case credentialsNotMatch
    case invalidEmail
    case invalidName
}

extension UserError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .credentialsNotMatch:
            return NSLocalizedString("Your username and/or password do not match", comment: "Credentials do not match")
        case .invalidEmail:
            return NSLocalizedString("Please enter email address in format: yourname@example.com", comment: "Invalid email format")
        case .invalidName:
            return NSLocalizedString("Please enter you name", comment: "Name field is blank")
        }
    }
}

func validate(email: String?, password: String?) throws {
    throw UserError.credentialsNotMatch
}

do {
    try validate(email: "email", password: "password")
} catch UserError.credentialsNotMatch {
    print(UserError.credentialsNotMatch.localizedDescription)
}

enum ProfileError: Error {
    case invalidSettings
}

extension ProfileError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidSettings:
            return NSLocalizedString("Your profile settings are incorrect", comment: "")
        }
    }
    
    public var failureReason: String? {
        switch self {
        case .invalidSettings:
            return NSLocalizedString("I don't know why", comment: "")
        }
    }
    
    public var recoverySuggestion: String? {
        switch self {
        case .invalidSettings:
            return NSLocalizedString("Pleae provide correct profile settings", comment: "")
        }
    }
}

let error = ProfileError.invalidSettings
print(error.errorDescription)
print(error.failureReason)
print(error.recoverySuggestion)

