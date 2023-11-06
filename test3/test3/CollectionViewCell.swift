//
//  CollectionViewCell.swift
//  test3
//
//  Created by Huy Vu on 11/6/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var first: UILabel!
    
    @IBOutlet weak var Second: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        

        
        // Làm cho ảnh tròn bằng cách thiết lập cornerRadius cho 1 nửa chiều rộng của UIImageView
                img.layer.cornerRadius = img.frame.size.width / 2
                img.layer.masksToBounds = true

                // Thiết lập thuộc tính clipsToBounds cho UIImageView để đảm bảo ảnh không thò ra ngoài vòng bo
                img.clipsToBounds = true

                // Đảm bảo ảnh hiển thị đúng tỷ lệ
                img.contentMode = .scaleAspectFill

    }

}
