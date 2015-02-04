import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayTView: UIView!
    
        override func viewDidLoad() {
        super.viewDidLoad()
        initiateRightSwipeOnBox ()
    }

//    @IBAction func displayTableView(sender: AnyObject) {
//        self.performSegueWithIdentifier("showTableVC", sender: nil)
//    }
    
    func initiateRightSwipeOnBox(){
        
        let swipeR = UISwipeGestureRecognizer(target: self, action: "swipedRight:")
        
        swipeR.direction = UISwipeGestureRecognizerDirection.Right
        
        self.displayTView.addGestureRecognizer(swipeR)
    }
    
    func swipedRight (sender: UISwipeGestureRecognizer)
    {
        var secondVC = self.storyboard?.instantiateViewControllerWithIdentifier("SecondVC") as SecondViewController
        self.presentViewController(secondVC, animated: true, completion: nil)
    }
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */

}

