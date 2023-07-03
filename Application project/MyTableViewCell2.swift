import UIKit

class MyTableViewCell2: UITableViewCell {
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var lb2: UILabel!
    @IBOutlet weak var img3: UIImageView!
    
    @IBOutlet weak var lb4: UILabel!
    @IBOutlet weak var lb3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
