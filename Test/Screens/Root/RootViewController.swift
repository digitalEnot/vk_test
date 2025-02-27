import UIKit

final class RootViewController: UIViewController {
    
    let factory: ReviewsScreenFactory
    let controller: ReviewsViewController

    private lazy var rootView = RootView(onTapReviews: openReviews)

    override func loadView() {
        view = rootView
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        factory = ReviewsScreenFactory()
        controller = factory.makeReviewsController()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

// MARK: - Private

private extension RootViewController {

    func openReviews() {
        navigationController?.pushViewController(controller, animated: true)
    }

}
