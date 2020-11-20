//
//  VideoCell.swift
//  BeginnerTableView
//
//  Created by Marco Vizcarra on 11/19/20.
//

import UIKit

class VideoCell: UITableViewCell {

    
    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    func setVideo(video: Video) {
        videoImageView.image = video.image
        videoTitleLabel.text = video.title
    }
    
    
}
