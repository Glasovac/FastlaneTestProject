import UIKit

struct AppManager {
    private static var topViewController: UIViewController? {
        return UIApplication.shared.windows.first?.rootViewController?.topMostViewController
    }

    static func presentAlert(alert: UIAlertController) {
        if let topViewController = topViewController {
            if (topViewController as? UIAlertController) == nil {
                topViewController.present(alert, animated: true, completion: nil)
            }
        }
    }
}
