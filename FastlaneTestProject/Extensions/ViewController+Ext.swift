import UIKit

extension UIViewController {
    public var topMostViewController: UIViewController {
        var viewController = self

        while let presentedViewController = viewController.presentedViewController {
            viewController = presentedViewController
        }

        if let viewController = viewController as? UINavigationController,
            let visibleViewController = viewController.visibleViewController {
            return visibleViewController.topMostViewController
        }

        if let viewController = viewController as? UITabBarController,
            let selectedViewController = viewController.selectedViewController {
            return selectedViewController.topMostViewController
        }

        if let searchController = (viewController as? UISearchController) {
            return searchController.presentingViewController ?? searchController
        }

        return viewController
    }
}
