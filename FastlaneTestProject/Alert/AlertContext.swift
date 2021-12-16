import UIKit

struct AlertContext {
    static func destructiveActionAlert(title: String, message: String, action: @escaping (() -> Void)) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let actionButton = UIAlertAction(title: "Yes", style: .destructive) { _ in action() }
        alert.addAction(actionButton)

        let cancelActionButton = UIAlertAction(title: "Cancel", style: .cancel)
        alert.addAction(cancelActionButton)

        return alert
    }
}
