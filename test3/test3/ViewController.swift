//
//  ViewController.swift
//  test3
//
//  Created by Huy Vu on 11/6/23.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        CollectionView.register(UINib(nibName: "CollectionViewCell", bundle: .main), forCellWithReuseIdentifier: "cell")
        
        
        let margin: CGFloat = 12
                    let layout = UICollectionViewFlowLayout()
    //                    layout.scrollDirection = .vertical
                   layout.scrollDirection = .horizontal // Chỉnh đổi để cuộn theo chiều ngang
                    layout.minimumLineSpacing = margin
                    layout.minimumInteritemSpacing = margin
                    var sizeCell = (view.frame.size.width - 4 * margin) / 3 - 2
                    if UIDevice.current.userInterfaceIdiom == .pad {
                        sizeCell = (view.frame.size.width - 5 * margin) / 4
                    }
                    
                    layout.itemSize = CGSize(width: sizeCell, height: 108 )
                    layout.sectionInset = UIEdgeInsets.init(top: margin, left: margin, bottom: margin, right: margin)
        
        // Đặt tốc độ cuộn chậm hơn
    //        col.decelerationRate = UIScrollView.DecelerationRate.fast // Chuyển thành .slow để làm cho cuộn chậm hơn
        CollectionView.showsHorizontalScrollIndicator = false // Ẩn thanh cuộn ngang
        CollectionView.collectionViewLayout = layout
    }

}

extension ViewController:  UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
//        let url = URL(string: "https://firebasestorage.googleapis.com/v0/b/test1-a8623.appspot.com/o/bZ2IVQyCcNeFbKvXLnBCAopUwqv2%2F002A11F6-C8B2-4E07-9464-857D7D6E4B69.png?alt=media&token=2eb8b2b1-53ce-4009-85ba-d5914df95b9e&_gl=1*1g3fwmd*_ga*NzQ4MDMxNjYzLjE2OTcwOTM5ODc.*_ga_CW55HF8NVT*MTY5OTI0NTg4Ni44OC4xLjE2OTkyNDU5NDguNjAuMC4w")
//        
//        cell.img.kf.setImage(with: url)
        cell.first.text = "huy"
        cell.Second.text = "vu"
        return cell
    }
    
    
    
}
