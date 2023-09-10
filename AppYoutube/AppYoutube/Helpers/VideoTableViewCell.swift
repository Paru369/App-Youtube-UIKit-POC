//
//  VideoTableViewCell.swift
//  AppYoutube
//
//  Created by Paulo Pinheiro on 9/10/23.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var video: Video?
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
        func setCell(_ v:Video) {
            self.video = v
            // Ensure that we have a video
            
            guard self.video != nil else {
                return
            }
            
            // set the title
            self.titleLabel.text = video?.title
            
            //Set the date
            let df = DateFormatter()
                   df.dateFormat = "EEEE, MMM d, yyyy"
                   dateLabel.text = df.string(from: video!.published)
            
            //Set the thumbnail
            
            guard self.video!.thumbnail != "" else {
                return
            }
            
            // Download the thumbnail data
            
            let url = URL(string: self.video!.thumbnail)
            
            // Get the shared URL Session object
            
            let session = URLSession.shared
            
            // create a data task
            
            let dataTask = session.dataTask(with: url!) { ( data, response, error ) in
                
                if error == nil && data != nil {
                    
                    if url!.absoluteString != self.video?.thumbnail {
                        return
                }
                    // create the image object
                    let image = UIImage(data: data!)
                    
                    // set the image view
                    
                    DispatchQueue.main.async {
                        self.thumbnailImageView.image = image
                    }
                    
                }
                
            }
            
            // Start data taks
            
            dataTask.resume()
            
        }
    }


