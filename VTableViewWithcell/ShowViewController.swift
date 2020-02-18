

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var showtime: UILabel!
    @IBOutlet weak var showplace: UILabel!
    @IBOutlet weak var showimg: UIImageView!
    
    
    
    var img:UIImage?
      var place:String = ""
      var time:String = ""
      
    override func viewDidLoad() {
        super.viewDidLoad()


        showimg.image = img
        showplace.text = place
        showtime.text = time
// Do any additional setup after loading the view.
    }
    

    
}
