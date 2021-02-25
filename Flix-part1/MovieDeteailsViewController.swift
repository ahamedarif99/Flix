//
//  MovieDeteailsViewController.swift
//  Flix-part1
//
//  Created by Ahamed Arif on 2/24/21.
//

import UIKit
import AlamofireImage

class MovieDeteailsViewController: UIViewController {
    
    @IBOutlet weak var backdropImage: UIImageView!
    
    @IBOutlet weak var posterImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text = movie["title"] as? String
        summaryLabel.text = movie["overview"] as? String
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        posterImage.af_setImage(withURL: posterURL!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: baseURL + backdropPath)
        
        backdropImage.af_setImage(withURL: backdropURL!)
        
    }
    

    
    // MARK: - Navigation
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
