//
//  VideoListScreenViewController.swift
//  BeginnerTableView
//
//  Created by Marco Vizcarra on 11/19/20.
//

import UIKit

class VideoListScreenViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var videos: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createArray()
        
    }
    
    func createArray() -> [Video] {
        var tempVideos: [Video] =  []
        
        let video1 = Video(image: #imageLiteral(resourceName: "imageExample1") , title: "Titulo de ejemplo 1")
        let video2 = Video(image: #imageLiteral(resourceName: "imageExample3") , title: "Titulo de ejemplo 2")
        let video3 = Video(image: #imageLiteral(resourceName: "imageExample2") , title: "Titulo de ejemplo 3")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        
        return tempVideos
    }
    

}

extension VideoListScreenViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
        
    }
    
}
