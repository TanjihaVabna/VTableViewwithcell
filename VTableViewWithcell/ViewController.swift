

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    var imageArray = ["p2","t2","t3"]
           var placeArray = ["Bangladesh","USA","Australia"]
           var timeArray = ["12am","2pm","7pm"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
                  
              cell.img.image = UIImage(named: imageArray[indexPath.row])
              
                 cell.place.text  = placeArray[indexPath.row]

            cell.time.text  = timeArray[indexPath.row]
        
           
          
                  cell.accessoryType = .disclosureIndicator
                  
              
                  
                  return cell
         
        }
    
    


    
    
    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 250
}
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
        {
            
                 let cell = storyboard?.instantiateViewController(identifier:  "ShowViewController") as! ShowViewController

                 cell.place = placeArray[indexPath.row]
                 cell.img = UIImage(named: imageArray[indexPath.row])
                 cell.time = timeArray[indexPath.row]
                 self.navigationController?.pushViewController(cell, animated: true)

        
    }

}

