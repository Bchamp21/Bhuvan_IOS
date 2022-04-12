//
//  ViewController.swift
//  BhuvanCollectionViewDemo
//
//  Created by Sarakam,Bhuvan Chandra on 4/12/22.
//

import UIKit
import SDWebImage

class BoxOfficeVC: UIViewController {

    
    
    private var movies = Movie.loadData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.movieCV.delegate = self
        self.movieCV.dataSource = self
        self.moviesCV.collectionViewLayout = self.layout()
        
        self.movieTeaserView.delegate = self
    }
    
    private func layout() -> UICollectionViewCompositionalLayout{
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.49), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .estimated(700), heightDimension: .fractionalHeight(1.0))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: self.movies.count)
        
        group.interItemSpacing = NSCollectionLayoutSpacing.fixed(3)
        
        let section = NSCollectionLayoutSection(group: group)
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        
        let config = UICollectionViewCompositionalLayoutConfiguration()
        config.scrollDirection = .horizontal
        
        layout.configuration = config
        
        return layout
    }

    @IBOutlet weak var movieCV: UICollectionView!
    
    @IBOutlet weak var movieTitleLBL: UILabel!
    @IBOutlet weak var movieRatingLBL: UILabel!
    @IBOutlet weak var movieYearOfReleaseLBL: UILabel!
    @IBOutlet weak var movieRevenueLBL: UILabel!
    
    

}



extension BoxOfficeVC: UICollectionViewDelegate{
    
}

extension BoxOfficeVC: UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = collectionView.dequeueReusableCell(withReuseIdentifier: PosterCVC.identifier, for: IndexPath)
        
        let selectedMovie = self.movies[indexPath.item]
        
        self.movieTitleLBL.text = "Title: \(selectedMovie.title)"
        
        self.movieRatingLBL.text = "Rating: \(selectedMovie.rating)"
        
        self.movieYearOfReleaseLBL.text = "Released in : \(selectedMovie.yearOfRelease)"
        
        self.movieRevenueLBL.text = "Revenue: \(selectedMovie.revenue)"
        
        if let poster = item as? PosterCVC{
            poster.moviePosterIV.sd_setImage(with: URL(string: selectedMovie.urlToPoster), )
        }
        
        return item
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        self.movies.count
    }
}
